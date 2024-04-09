; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131814 () Bool)

(assert start!131814)

(declare-fun res!1058782 () Bool)

(declare-fun e!858547 () Bool)

(assert (=> start!131814 (=> (not res!1058782) (not e!858547))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131814 (= res!1058782 (validMask!0 mask!926))))

(assert (=> start!131814 e!858547))

(assert (=> start!131814 true))

(declare-datatypes ((V!58805 0))(
  ( (V!58806 (val!18963 Int)) )
))
(declare-datatypes ((ValueCell!17975 0))(
  ( (ValueCellFull!17975 (v!21761 V!58805)) (EmptyCell!17975) )
))
(declare-datatypes ((array!102729 0))(
  ( (array!102730 (arr!49562 (Array (_ BitVec 32) ValueCell!17975)) (size!50113 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102729)

(declare-fun e!858546 () Bool)

(declare-fun array_inv!38481 (array!102729) Bool)

(assert (=> start!131814 (and (array_inv!38481 _values!470) e!858546)))

(declare-datatypes ((array!102731 0))(
  ( (array!102732 (arr!49563 (Array (_ BitVec 32) (_ BitVec 64))) (size!50114 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102731)

(declare-fun array_inv!38482 (array!102731) Bool)

(assert (=> start!131814 (array_inv!38482 _keys!618)))

(declare-fun mapIsEmpty!58360 () Bool)

(declare-fun mapRes!58360 () Bool)

(assert (=> mapIsEmpty!58360 mapRes!58360))

(declare-fun b!1542866 () Bool)

(assert (=> b!1542866 (= e!858547 false)))

(declare-fun lt!665831 () Bool)

(declare-datatypes ((List!36049 0))(
  ( (Nil!36046) (Cons!36045 (h!37491 (_ BitVec 64)) (t!50750 List!36049)) )
))
(declare-fun arrayNoDuplicates!0 (array!102731 (_ BitVec 32) List!36049) Bool)

(assert (=> b!1542866 (= lt!665831 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36046))))

(declare-fun b!1542867 () Bool)

(declare-fun e!858544 () Bool)

(declare-fun tp_is_empty!37771 () Bool)

(assert (=> b!1542867 (= e!858544 tp_is_empty!37771)))

(declare-fun b!1542868 () Bool)

(declare-fun e!858543 () Bool)

(assert (=> b!1542868 (= e!858543 tp_is_empty!37771)))

(declare-fun mapNonEmpty!58360 () Bool)

(declare-fun tp!110888 () Bool)

(assert (=> mapNonEmpty!58360 (= mapRes!58360 (and tp!110888 e!858544))))

(declare-fun mapRest!58360 () (Array (_ BitVec 32) ValueCell!17975))

(declare-fun mapValue!58360 () ValueCell!17975)

(declare-fun mapKey!58360 () (_ BitVec 32))

(assert (=> mapNonEmpty!58360 (= (arr!49562 _values!470) (store mapRest!58360 mapKey!58360 mapValue!58360))))

(declare-fun b!1542869 () Bool)

(declare-fun res!1058781 () Bool)

(assert (=> b!1542869 (=> (not res!1058781) (not e!858547))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542869 (= res!1058781 (and (= (size!50113 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50114 _keys!618) (size!50113 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542870 () Bool)

(declare-fun res!1058783 () Bool)

(assert (=> b!1542870 (=> (not res!1058783) (not e!858547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102731 (_ BitVec 32)) Bool)

(assert (=> b!1542870 (= res!1058783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542871 () Bool)

(assert (=> b!1542871 (= e!858546 (and e!858543 mapRes!58360))))

(declare-fun condMapEmpty!58360 () Bool)

(declare-fun mapDefault!58360 () ValueCell!17975)

