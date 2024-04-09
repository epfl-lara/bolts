; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3672 () Bool)

(assert start!3672)

(declare-fun mapIsEmpty!1060 () Bool)

(declare-fun mapRes!1060 () Bool)

(assert (=> mapIsEmpty!1060 mapRes!1060))

(declare-datatypes ((V!1211 0))(
  ( (V!1212 (val!546 Int)) )
))
(declare-datatypes ((ValueCell!320 0))(
  ( (ValueCellFull!320 (v!1631 V!1211)) (EmptyCell!320) )
))
(declare-datatypes ((array!1313 0))(
  ( (array!1314 (arr!619 (Array (_ BitVec 32) ValueCell!320)) (size!720 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1313)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun e!16661 () Bool)

(declare-datatypes ((array!1315 0))(
  ( (array!1316 (arr!620 (Array (_ BitVec 32) (_ BitVec 64))) (size!721 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1315)

(declare-fun b!25773 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!25773 (= e!16661 (and (= (size!720 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!721 _keys!1833) (size!720 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011) (not (= (size!721 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294)))))))

(declare-fun b!25774 () Bool)

(declare-fun e!16658 () Bool)

(declare-fun tp_is_empty!1039 () Bool)

(assert (=> b!25774 (= e!16658 tp_is_empty!1039)))

(declare-fun b!25775 () Bool)

(declare-fun e!16657 () Bool)

(declare-fun e!16660 () Bool)

(assert (=> b!25775 (= e!16657 (and e!16660 mapRes!1060))))

(declare-fun condMapEmpty!1060 () Bool)

(declare-fun mapDefault!1060 () ValueCell!320)

