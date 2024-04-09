; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35568 () Bool)

(assert start!35568)

(declare-fun b!356224 () Bool)

(declare-fun res!197733 () Bool)

(declare-fun e!218284 () Bool)

(assert (=> b!356224 (=> (not res!197733) (not e!218284))))

(declare-datatypes ((array!19565 0))(
  ( (array!19566 (arr!9273 (Array (_ BitVec 32) (_ BitVec 64))) (size!9625 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19565)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!356224 (= res!197733 (not (= (select (arr!9273 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356225 () Bool)

(declare-fun res!197730 () Bool)

(assert (=> b!356225 (=> (not res!197730) (not e!218284))))

(assert (=> b!356225 (= res!197730 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9625 _keys!1456))))))

(declare-fun b!356226 () Bool)

(declare-fun res!197727 () Bool)

(assert (=> b!356226 (=> (not res!197727) (not e!218284))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19565 (_ BitVec 32)) Bool)

(assert (=> b!356226 (= res!197727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356227 () Bool)

(declare-fun e!218281 () Bool)

(declare-fun tp_is_empty!8013 () Bool)

(assert (=> b!356227 (= e!218281 tp_is_empty!8013)))

(declare-fun b!356228 () Bool)

(declare-fun res!197729 () Bool)

(assert (=> b!356228 (=> (not res!197729) (not e!218284))))

(declare-datatypes ((V!11661 0))(
  ( (V!11662 (val!4051 Int)) )
))
(declare-datatypes ((ValueCell!3663 0))(
  ( (ValueCellFull!3663 (v!6241 V!11661)) (EmptyCell!3663) )
))
(declare-datatypes ((array!19567 0))(
  ( (array!19568 (arr!9274 (Array (_ BitVec 32) ValueCell!3663)) (size!9626 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19567)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!356228 (= res!197729 (and (= (size!9626 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9625 _keys!1456) (size!9626 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!197734 () Bool)

(assert (=> start!35568 (=> (not res!197734) (not e!218284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35568 (= res!197734 (validMask!0 mask!1842))))

(assert (=> start!35568 e!218284))

(assert (=> start!35568 tp_is_empty!8013))

(assert (=> start!35568 true))

(declare-fun array_inv!6824 (array!19565) Bool)

(assert (=> start!35568 (array_inv!6824 _keys!1456)))

(declare-fun e!218285 () Bool)

(declare-fun array_inv!6825 (array!19567) Bool)

(assert (=> start!35568 (and (array_inv!6825 _values!1208) e!218285)))

(declare-fun b!356229 () Bool)

(declare-fun res!197728 () Bool)

(assert (=> b!356229 (=> (not res!197728) (not e!218284))))

(declare-fun arrayContainsKey!0 (array!19565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356229 (= res!197728 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356230 () Bool)

(assert (=> b!356230 (= e!218284 (not true))))

(assert (=> b!356230 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11661)

(declare-fun zeroValue!1150 () V!11661)

(declare-datatypes ((Unit!10969 0))(
  ( (Unit!10970) )
))
(declare-fun lt!165895 () Unit!10969)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!5 (array!19565 array!19567 (_ BitVec 32) (_ BitVec 32) V!11661 V!11661 (_ BitVec 64) (_ BitVec 32)) Unit!10969)

(assert (=> b!356230 (= lt!165895 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!5 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356231 () Bool)

(declare-fun e!218282 () Bool)

(assert (=> b!356231 (= e!218282 tp_is_empty!8013)))

(declare-fun mapNonEmpty!13527 () Bool)

(declare-fun mapRes!13527 () Bool)

(declare-fun tp!27504 () Bool)

(assert (=> mapNonEmpty!13527 (= mapRes!13527 (and tp!27504 e!218281))))

(declare-fun mapRest!13527 () (Array (_ BitVec 32) ValueCell!3663))

(declare-fun mapValue!13527 () ValueCell!3663)

(declare-fun mapKey!13527 () (_ BitVec 32))

(assert (=> mapNonEmpty!13527 (= (arr!9274 _values!1208) (store mapRest!13527 mapKey!13527 mapValue!13527))))

(declare-fun b!356232 () Bool)

(declare-fun res!197731 () Bool)

(assert (=> b!356232 (=> (not res!197731) (not e!218284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356232 (= res!197731 (validKeyInArray!0 k0!1077))))

(declare-fun b!356233 () Bool)

(declare-fun res!197732 () Bool)

(assert (=> b!356233 (=> (not res!197732) (not e!218284))))

(declare-datatypes ((List!5389 0))(
  ( (Nil!5386) (Cons!5385 (h!6241 (_ BitVec 64)) (t!10547 List!5389)) )
))
(declare-fun arrayNoDuplicates!0 (array!19565 (_ BitVec 32) List!5389) Bool)

(assert (=> b!356233 (= res!197732 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5386))))

(declare-fun b!356234 () Bool)

(assert (=> b!356234 (= e!218285 (and e!218282 mapRes!13527))))

(declare-fun condMapEmpty!13527 () Bool)

(declare-fun mapDefault!13527 () ValueCell!3663)

(assert (=> b!356234 (= condMapEmpty!13527 (= (arr!9274 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3663)) mapDefault!13527)))))

(declare-fun mapIsEmpty!13527 () Bool)

(assert (=> mapIsEmpty!13527 mapRes!13527))

(assert (= (and start!35568 res!197734) b!356228))

(assert (= (and b!356228 res!197729) b!356226))

(assert (= (and b!356226 res!197727) b!356233))

(assert (= (and b!356233 res!197732) b!356232))

(assert (= (and b!356232 res!197731) b!356225))

(assert (= (and b!356225 res!197730) b!356229))

(assert (= (and b!356229 res!197728) b!356224))

(assert (= (and b!356224 res!197733) b!356230))

(assert (= (and b!356234 condMapEmpty!13527) mapIsEmpty!13527))

(assert (= (and b!356234 (not condMapEmpty!13527)) mapNonEmpty!13527))

(get-info :version)

(assert (= (and mapNonEmpty!13527 ((_ is ValueCellFull!3663) mapValue!13527)) b!356227))

(assert (= (and b!356234 ((_ is ValueCellFull!3663) mapDefault!13527)) b!356231))

(assert (= start!35568 b!356234))

(declare-fun m!354667 () Bool)

(assert (=> mapNonEmpty!13527 m!354667))

(declare-fun m!354669 () Bool)

(assert (=> b!356224 m!354669))

(declare-fun m!354671 () Bool)

(assert (=> b!356233 m!354671))

(declare-fun m!354673 () Bool)

(assert (=> b!356232 m!354673))

(declare-fun m!354675 () Bool)

(assert (=> b!356226 m!354675))

(declare-fun m!354677 () Bool)

(assert (=> start!35568 m!354677))

(declare-fun m!354679 () Bool)

(assert (=> start!35568 m!354679))

(declare-fun m!354681 () Bool)

(assert (=> start!35568 m!354681))

(declare-fun m!354683 () Bool)

(assert (=> b!356229 m!354683))

(declare-fun m!354685 () Bool)

(assert (=> b!356230 m!354685))

(declare-fun m!354687 () Bool)

(assert (=> b!356230 m!354687))

(check-sat (not b!356230) (not b!356229) (not start!35568) (not mapNonEmpty!13527) (not b!356233) (not b!356232) (not b!356226) tp_is_empty!8013)
(check-sat)
