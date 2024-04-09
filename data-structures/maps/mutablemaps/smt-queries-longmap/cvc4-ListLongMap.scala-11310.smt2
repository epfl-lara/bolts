; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131800 () Bool)

(assert start!131800)

(declare-fun b!1542740 () Bool)

(declare-fun res!1058718 () Bool)

(declare-fun e!858441 () Bool)

(assert (=> b!1542740 (=> (not res!1058718) (not e!858441))))

(declare-datatypes ((array!102703 0))(
  ( (array!102704 (arr!49549 (Array (_ BitVec 32) (_ BitVec 64))) (size!50100 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102703)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102703 (_ BitVec 32)) Bool)

(assert (=> b!1542740 (= res!1058718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58339 () Bool)

(declare-fun mapRes!58339 () Bool)

(declare-fun tp!110867 () Bool)

(declare-fun e!858439 () Bool)

(assert (=> mapNonEmpty!58339 (= mapRes!58339 (and tp!110867 e!858439))))

(declare-datatypes ((V!58785 0))(
  ( (V!58786 (val!18956 Int)) )
))
(declare-datatypes ((ValueCell!17968 0))(
  ( (ValueCellFull!17968 (v!21754 V!58785)) (EmptyCell!17968) )
))
(declare-fun mapValue!58339 () ValueCell!17968)

(declare-datatypes ((array!102705 0))(
  ( (array!102706 (arr!49550 (Array (_ BitVec 32) ValueCell!17968)) (size!50101 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102705)

(declare-fun mapRest!58339 () (Array (_ BitVec 32) ValueCell!17968))

(declare-fun mapKey!58339 () (_ BitVec 32))

(assert (=> mapNonEmpty!58339 (= (arr!49550 _values!470) (store mapRest!58339 mapKey!58339 mapValue!58339))))

(declare-fun b!1542741 () Bool)

(declare-fun tp_is_empty!37757 () Bool)

(assert (=> b!1542741 (= e!858439 tp_is_empty!37757)))

(declare-fun b!1542742 () Bool)

(assert (=> b!1542742 (= e!858441 false)))

(declare-fun lt!665810 () Bool)

(declare-datatypes ((List!36043 0))(
  ( (Nil!36040) (Cons!36039 (h!37485 (_ BitVec 64)) (t!50744 List!36043)) )
))
(declare-fun arrayNoDuplicates!0 (array!102703 (_ BitVec 32) List!36043) Bool)

(assert (=> b!1542742 (= lt!665810 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36040))))

(declare-fun res!1058719 () Bool)

(assert (=> start!131800 (=> (not res!1058719) (not e!858441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131800 (= res!1058719 (validMask!0 mask!926))))

(assert (=> start!131800 e!858441))

(assert (=> start!131800 true))

(declare-fun e!858440 () Bool)

(declare-fun array_inv!38471 (array!102705) Bool)

(assert (=> start!131800 (and (array_inv!38471 _values!470) e!858440)))

(declare-fun array_inv!38472 (array!102703) Bool)

(assert (=> start!131800 (array_inv!38472 _keys!618)))

(declare-fun mapIsEmpty!58339 () Bool)

(assert (=> mapIsEmpty!58339 mapRes!58339))

(declare-fun b!1542743 () Bool)

(declare-fun e!858438 () Bool)

(assert (=> b!1542743 (= e!858438 tp_is_empty!37757)))

(declare-fun b!1542744 () Bool)

(declare-fun res!1058720 () Bool)

(assert (=> b!1542744 (=> (not res!1058720) (not e!858441))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542744 (= res!1058720 (and (= (size!50101 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50100 _keys!618) (size!50101 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542745 () Bool)

(assert (=> b!1542745 (= e!858440 (and e!858438 mapRes!58339))))

(declare-fun condMapEmpty!58339 () Bool)

(declare-fun mapDefault!58339 () ValueCell!17968)

