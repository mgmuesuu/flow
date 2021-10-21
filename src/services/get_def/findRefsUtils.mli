(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

type ast_info = (Loc.t, Loc.t) Flow_ast.Program.t * File_sig.With_Loc.t * Docblock.t

val compute_docblock : File_key.t -> string (* content *) -> Docblock.t

val compute_ast_result :
  Options.t -> File_key.t -> string (* content *) -> (ast_info, string) result
