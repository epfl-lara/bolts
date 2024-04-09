; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100500 () Bool)

(assert start!100500)

(declare-fun b_free!25787 () Bool)

(declare-fun b_next!25787 () Bool)

(assert (=> start!100500 (= b_free!25787 (not b_next!25787))))

(declare-fun tp!90351 () Bool)

(declare-fun b_and!42475 () Bool)

(assert (=> start!100500 (= tp!90351 b_and!42475)))

(declare-fun b!1199652 () Bool)

(declare-fun res!798608 () Bool)

(declare-fun e!681379 () Bool)

(assert (=> b!1199652 (=> (not res!798608) (not e!681379))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77738 0))(
  ( (array!77739 (arr!37510 (Array (_ BitVec 32) (_ BitVec 64))) (size!38047 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77738)

(assert (=> b!1199652 (= res!798608 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38047 _keys!1208))))))

(declare-fun b!1199653 () Bool)

(declare-fun e!681384 () Bool)

(declare-fun e!681383 () Bool)

(declare-fun mapRes!47579 () Bool)

(assert (=> b!1199653 (= e!681384 (and e!681383 mapRes!47579))))

(declare-fun condMapEmpty!47579 () Bool)

(declare-datatypes ((V!45781 0))(
  ( (V!45782 (val!15302 Int)) )
))
(declare-datatypes ((ValueCell!14536 0))(
  ( (ValueCellFull!14536 (v!17941 V!45781)) (EmptyCell!14536) )
))
(declare-datatypes ((array!77740 0))(
  ( (array!77741 (arr!37511 (Array (_ BitVec 32) ValueCell!14536)) (size!38048 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77740)

(declare-fun mapDefault!47579 () ValueCell!14536)

