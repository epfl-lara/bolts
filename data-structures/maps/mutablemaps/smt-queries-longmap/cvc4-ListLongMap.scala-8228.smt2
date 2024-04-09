; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100316 () Bool)

(assert start!100316)

(declare-fun b!1196270 () Bool)

(declare-fun e!679723 () Bool)

(declare-fun e!679725 () Bool)

(declare-fun mapRes!47357 () Bool)

(assert (=> b!1196270 (= e!679723 (and e!679725 mapRes!47357))))

(declare-fun condMapEmpty!47357 () Bool)

(declare-datatypes ((V!45589 0))(
  ( (V!45590 (val!15230 Int)) )
))
(declare-datatypes ((ValueCell!14464 0))(
  ( (ValueCellFull!14464 (v!17869 V!45589)) (EmptyCell!14464) )
))
(declare-datatypes ((array!77456 0))(
  ( (array!77457 (arr!37371 (Array (_ BitVec 32) ValueCell!14464)) (size!37908 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77456)

(declare-fun mapDefault!47357 () ValueCell!14464)

