; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35574 () Bool)

(assert start!35574)

(declare-fun b!356323 () Bool)

(declare-fun e!218326 () Bool)

(declare-fun tp_is_empty!8019 () Bool)

(assert (=> b!356323 (= e!218326 tp_is_empty!8019)))

(declare-fun b!356324 () Bool)

(declare-fun res!197801 () Bool)

(declare-fun e!218328 () Bool)

(assert (=> b!356324 (=> (not res!197801) (not e!218328))))

(declare-datatypes ((array!19577 0))(
  ( (array!19578 (arr!9279 (Array (_ BitVec 32) (_ BitVec 64))) (size!9631 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19577)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!356324 (= res!197801 (not (= (select (arr!9279 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356325 () Bool)

(declare-fun res!197799 () Bool)

(assert (=> b!356325 (=> (not res!197799) (not e!218328))))

(assert (=> b!356325 (= res!197799 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9631 _keys!1456))))))

(declare-fun b!356326 () Bool)

(declare-fun e!218329 () Bool)

(assert (=> b!356326 (= e!218329 tp_is_empty!8019)))

(declare-fun b!356327 () Bool)

(declare-fun res!197802 () Bool)

(assert (=> b!356327 (=> (not res!197802) (not e!218328))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11669 0))(
  ( (V!11670 (val!4054 Int)) )
))
(declare-datatypes ((ValueCell!3666 0))(
  ( (ValueCellFull!3666 (v!6244 V!11669)) (EmptyCell!3666) )
))
(declare-datatypes ((array!19579 0))(
  ( (array!19580 (arr!9280 (Array (_ BitVec 32) ValueCell!3666)) (size!9632 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19579)

(assert (=> b!356327 (= res!197802 (and (= (size!9632 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9631 _keys!1456) (size!9632 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356329 () Bool)

(assert (=> b!356329 (= e!218328 (not true))))

(declare-fun arrayContainsKey!0 (array!19577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356329 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11669)

(declare-fun zeroValue!1150 () V!11669)

(declare-datatypes ((Unit!10973 0))(
  ( (Unit!10974) )
))
(declare-fun lt!165904 () Unit!10973)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!7 (array!19577 array!19579 (_ BitVec 32) (_ BitVec 32) V!11669 V!11669 (_ BitVec 64) (_ BitVec 32)) Unit!10973)

(assert (=> b!356329 (= lt!165904 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!7 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356330 () Bool)

(declare-fun res!197800 () Bool)

(assert (=> b!356330 (=> (not res!197800) (not e!218328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19577 (_ BitVec 32)) Bool)

(assert (=> b!356330 (= res!197800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13536 () Bool)

(declare-fun mapRes!13536 () Bool)

(assert (=> mapIsEmpty!13536 mapRes!13536))

(declare-fun b!356331 () Bool)

(declare-fun res!197804 () Bool)

(assert (=> b!356331 (=> (not res!197804) (not e!218328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356331 (= res!197804 (validKeyInArray!0 k0!1077))))

(declare-fun b!356332 () Bool)

(declare-fun res!197805 () Bool)

(assert (=> b!356332 (=> (not res!197805) (not e!218328))))

(assert (=> b!356332 (= res!197805 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356328 () Bool)

(declare-fun e!218330 () Bool)

(assert (=> b!356328 (= e!218330 (and e!218326 mapRes!13536))))

(declare-fun condMapEmpty!13536 () Bool)

(declare-fun mapDefault!13536 () ValueCell!3666)

(assert (=> b!356328 (= condMapEmpty!13536 (= (arr!9280 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3666)) mapDefault!13536)))))

(declare-fun res!197806 () Bool)

(assert (=> start!35574 (=> (not res!197806) (not e!218328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35574 (= res!197806 (validMask!0 mask!1842))))

(assert (=> start!35574 e!218328))

(assert (=> start!35574 tp_is_empty!8019))

(assert (=> start!35574 true))

(declare-fun array_inv!6830 (array!19577) Bool)

(assert (=> start!35574 (array_inv!6830 _keys!1456)))

(declare-fun array_inv!6831 (array!19579) Bool)

(assert (=> start!35574 (and (array_inv!6831 _values!1208) e!218330)))

(declare-fun b!356333 () Bool)

(declare-fun res!197803 () Bool)

(assert (=> b!356333 (=> (not res!197803) (not e!218328))))

(declare-datatypes ((List!5391 0))(
  ( (Nil!5388) (Cons!5387 (h!6243 (_ BitVec 64)) (t!10549 List!5391)) )
))
(declare-fun arrayNoDuplicates!0 (array!19577 (_ BitVec 32) List!5391) Bool)

(assert (=> b!356333 (= res!197803 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5388))))

(declare-fun mapNonEmpty!13536 () Bool)

(declare-fun tp!27513 () Bool)

(assert (=> mapNonEmpty!13536 (= mapRes!13536 (and tp!27513 e!218329))))

(declare-fun mapValue!13536 () ValueCell!3666)

(declare-fun mapKey!13536 () (_ BitVec 32))

(declare-fun mapRest!13536 () (Array (_ BitVec 32) ValueCell!3666))

(assert (=> mapNonEmpty!13536 (= (arr!9280 _values!1208) (store mapRest!13536 mapKey!13536 mapValue!13536))))

(assert (= (and start!35574 res!197806) b!356327))

(assert (= (and b!356327 res!197802) b!356330))

(assert (= (and b!356330 res!197800) b!356333))

(assert (= (and b!356333 res!197803) b!356331))

(assert (= (and b!356331 res!197804) b!356325))

(assert (= (and b!356325 res!197799) b!356332))

(assert (= (and b!356332 res!197805) b!356324))

(assert (= (and b!356324 res!197801) b!356329))

(assert (= (and b!356328 condMapEmpty!13536) mapIsEmpty!13536))

(assert (= (and b!356328 (not condMapEmpty!13536)) mapNonEmpty!13536))

(get-info :version)

(assert (= (and mapNonEmpty!13536 ((_ is ValueCellFull!3666) mapValue!13536)) b!356326))

(assert (= (and b!356328 ((_ is ValueCellFull!3666) mapDefault!13536)) b!356323))

(assert (= start!35574 b!356328))

(declare-fun m!354733 () Bool)

(assert (=> mapNonEmpty!13536 m!354733))

(declare-fun m!354735 () Bool)

(assert (=> b!356332 m!354735))

(declare-fun m!354737 () Bool)

(assert (=> start!35574 m!354737))

(declare-fun m!354739 () Bool)

(assert (=> start!35574 m!354739))

(declare-fun m!354741 () Bool)

(assert (=> start!35574 m!354741))

(declare-fun m!354743 () Bool)

(assert (=> b!356330 m!354743))

(declare-fun m!354745 () Bool)

(assert (=> b!356324 m!354745))

(declare-fun m!354747 () Bool)

(assert (=> b!356329 m!354747))

(declare-fun m!354749 () Bool)

(assert (=> b!356329 m!354749))

(declare-fun m!354751 () Bool)

(assert (=> b!356331 m!354751))

(declare-fun m!354753 () Bool)

(assert (=> b!356333 m!354753))

(check-sat (not b!356329) (not b!356330) (not b!356333) (not b!356332) tp_is_empty!8019 (not start!35574) (not b!356331) (not mapNonEmpty!13536))
(check-sat)
