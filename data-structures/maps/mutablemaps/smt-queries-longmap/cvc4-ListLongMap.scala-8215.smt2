; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100222 () Bool)

(assert start!100222)

(declare-fun b!1194699 () Bool)

(declare-fun e!678979 () Bool)

(declare-fun e!678981 () Bool)

(declare-fun mapRes!47237 () Bool)

(assert (=> b!1194699 (= e!678979 (and e!678981 mapRes!47237))))

(declare-fun condMapEmpty!47237 () Bool)

(declare-datatypes ((V!45485 0))(
  ( (V!45486 (val!15191 Int)) )
))
(declare-datatypes ((ValueCell!14425 0))(
  ( (ValueCellFull!14425 (v!17830 V!45485)) (EmptyCell!14425) )
))
(declare-datatypes ((array!77302 0))(
  ( (array!77303 (arr!37295 (Array (_ BitVec 32) ValueCell!14425)) (size!37832 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77302)

(declare-fun mapDefault!47237 () ValueCell!14425)

