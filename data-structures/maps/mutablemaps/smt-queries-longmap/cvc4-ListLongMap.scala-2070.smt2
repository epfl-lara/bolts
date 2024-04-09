; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35600 () Bool)

(assert start!35600)

(declare-fun mapNonEmpty!13575 () Bool)

(declare-fun mapRes!13575 () Bool)

(declare-fun tp!27552 () Bool)

(declare-fun e!218525 () Bool)

(assert (=> mapNonEmpty!13575 (= mapRes!13575 (and tp!27552 e!218525))))

(declare-datatypes ((V!11703 0))(
  ( (V!11704 (val!4067 Int)) )
))
(declare-datatypes ((ValueCell!3679 0))(
  ( (ValueCellFull!3679 (v!6257 V!11703)) (EmptyCell!3679) )
))
(declare-fun mapValue!13575 () ValueCell!3679)

(declare-fun mapKey!13575 () (_ BitVec 32))

(declare-datatypes ((array!19625 0))(
  ( (array!19626 (arr!9303 (Array (_ BitVec 32) ValueCell!3679)) (size!9655 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19625)

(declare-fun mapRest!13575 () (Array (_ BitVec 32) ValueCell!3679))

(assert (=> mapNonEmpty!13575 (= (arr!9303 _values!1208) (store mapRest!13575 mapKey!13575 mapValue!13575))))

(declare-fun b!356752 () Bool)

(declare-fun res!198114 () Bool)

(declare-fun e!218522 () Bool)

(assert (=> b!356752 (=> (not res!198114) (not e!218522))))

(declare-datatypes ((array!19627 0))(
  ( (array!19628 (arr!9304 (Array (_ BitVec 32) (_ BitVec 64))) (size!9656 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19627)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356752 (= res!198114 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356753 () Bool)

(assert (=> b!356753 (= e!218522 (not true))))

(assert (=> b!356753 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!10993 0))(
  ( (Unit!10994) )
))
(declare-fun lt!165943 () Unit!10993)

(declare-fun minValue!1150 () V!11703)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11703)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!17 (array!19627 array!19625 (_ BitVec 32) (_ BitVec 32) V!11703 V!11703 (_ BitVec 64) (_ BitVec 32)) Unit!10993)

(assert (=> b!356753 (= lt!165943 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!17 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356754 () Bool)

(declare-fun res!198113 () Bool)

(assert (=> b!356754 (=> (not res!198113) (not e!218522))))

(declare-datatypes ((List!5402 0))(
  ( (Nil!5399) (Cons!5398 (h!6254 (_ BitVec 64)) (t!10560 List!5402)) )
))
(declare-fun arrayNoDuplicates!0 (array!19627 (_ BitVec 32) List!5402) Bool)

(assert (=> b!356754 (= res!198113 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5399))))

(declare-fun b!356755 () Bool)

(declare-fun res!198115 () Bool)

(assert (=> b!356755 (=> (not res!198115) (not e!218522))))

(assert (=> b!356755 (= res!198115 (not (= (select (arr!9304 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356756 () Bool)

(declare-fun res!198116 () Bool)

(assert (=> b!356756 (=> (not res!198116) (not e!218522))))

(assert (=> b!356756 (= res!198116 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9656 _keys!1456))))))

(declare-fun b!356757 () Bool)

(declare-fun res!198112 () Bool)

(assert (=> b!356757 (=> (not res!198112) (not e!218522))))

(assert (=> b!356757 (= res!198112 (and (= (size!9655 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9656 _keys!1456) (size!9655 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356758 () Bool)

(declare-fun res!198118 () Bool)

(assert (=> b!356758 (=> (not res!198118) (not e!218522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356758 (= res!198118 (validKeyInArray!0 k!1077))))

(declare-fun mapIsEmpty!13575 () Bool)

(assert (=> mapIsEmpty!13575 mapRes!13575))

(declare-fun res!198117 () Bool)

(assert (=> start!35600 (=> (not res!198117) (not e!218522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35600 (= res!198117 (validMask!0 mask!1842))))

(assert (=> start!35600 e!218522))

(declare-fun tp_is_empty!8045 () Bool)

(assert (=> start!35600 tp_is_empty!8045))

(assert (=> start!35600 true))

(declare-fun array_inv!6850 (array!19627) Bool)

(assert (=> start!35600 (array_inv!6850 _keys!1456)))

(declare-fun e!218524 () Bool)

(declare-fun array_inv!6851 (array!19625) Bool)

(assert (=> start!35600 (and (array_inv!6851 _values!1208) e!218524)))

(declare-fun b!356759 () Bool)

(declare-fun e!218521 () Bool)

(assert (=> b!356759 (= e!218521 tp_is_empty!8045)))

(declare-fun b!356760 () Bool)

(declare-fun res!198111 () Bool)

(assert (=> b!356760 (=> (not res!198111) (not e!218522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19627 (_ BitVec 32)) Bool)

(assert (=> b!356760 (= res!198111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356761 () Bool)

(assert (=> b!356761 (= e!218525 tp_is_empty!8045)))

(declare-fun b!356762 () Bool)

(assert (=> b!356762 (= e!218524 (and e!218521 mapRes!13575))))

(declare-fun condMapEmpty!13575 () Bool)

(declare-fun mapDefault!13575 () ValueCell!3679)

