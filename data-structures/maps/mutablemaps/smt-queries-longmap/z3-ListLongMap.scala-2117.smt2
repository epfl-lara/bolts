; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35896 () Bool)

(assert start!35896)

(declare-fun mapNonEmpty!13998 () Bool)

(declare-fun mapRes!13998 () Bool)

(declare-fun tp!28065 () Bool)

(declare-fun e!220738 () Bool)

(assert (=> mapNonEmpty!13998 (= mapRes!13998 (and tp!28065 e!220738))))

(declare-fun mapKey!13998 () (_ BitVec 32))

(declare-datatypes ((V!12077 0))(
  ( (V!12078 (val!4207 Int)) )
))
(declare-datatypes ((ValueCell!3819 0))(
  ( (ValueCellFull!3819 (v!6397 V!12077)) (EmptyCell!3819) )
))
(declare-fun mapRest!13998 () (Array (_ BitVec 32) ValueCell!3819))

(declare-datatypes ((array!20173 0))(
  ( (array!20174 (arr!9576 (Array (_ BitVec 32) ValueCell!3819)) (size!9928 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20173)

(declare-fun mapValue!13998 () ValueCell!3819)

(assert (=> mapNonEmpty!13998 (= (arr!9576 _values!1208) (store mapRest!13998 mapKey!13998 mapValue!13998))))

(declare-fun res!200636 () Bool)

(declare-fun e!220739 () Bool)

(assert (=> start!35896 (=> (not res!200636) (not e!220739))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35896 (= res!200636 (validMask!0 mask!1842))))

(assert (=> start!35896 e!220739))

(declare-fun tp_is_empty!8325 () Bool)

(assert (=> start!35896 tp_is_empty!8325))

(assert (=> start!35896 true))

(declare-datatypes ((array!20175 0))(
  ( (array!20176 (arr!9577 (Array (_ BitVec 32) (_ BitVec 64))) (size!9929 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20175)

(declare-fun array_inv!7040 (array!20175) Bool)

(assert (=> start!35896 (array_inv!7040 _keys!1456)))

(declare-fun e!220737 () Bool)

(declare-fun array_inv!7041 (array!20173) Bool)

(assert (=> start!35896 (and (array_inv!7041 _values!1208) e!220737)))

(declare-fun b!360551 () Bool)

(declare-fun res!200637 () Bool)

(assert (=> b!360551 (=> (not res!200637) (not e!220739))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360551 (= res!200637 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!360552 () Bool)

(declare-fun e!220741 () Bool)

(assert (=> b!360552 (= e!220737 (and e!220741 mapRes!13998))))

(declare-fun condMapEmpty!13998 () Bool)

(declare-fun mapDefault!13998 () ValueCell!3819)

(assert (=> b!360552 (= condMapEmpty!13998 (= (arr!9576 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3819)) mapDefault!13998)))))

(declare-fun b!360553 () Bool)

(declare-fun res!200632 () Bool)

(assert (=> b!360553 (=> (not res!200632) (not e!220739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20175 (_ BitVec 32)) Bool)

(assert (=> b!360553 (= res!200632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360554 () Bool)

(assert (=> b!360554 (= e!220739 (not true))))

(assert (=> b!360554 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12077)

(declare-datatypes ((Unit!11087 0))(
  ( (Unit!11088) )
))
(declare-fun lt!166447 () Unit!11087)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12077)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!60 (array!20175 array!20173 (_ BitVec 32) (_ BitVec 32) V!12077 V!12077 (_ BitVec 64) (_ BitVec 32)) Unit!11087)

(assert (=> b!360554 (= lt!166447 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!60 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13998 () Bool)

(assert (=> mapIsEmpty!13998 mapRes!13998))

(declare-fun b!360555 () Bool)

(declare-fun res!200635 () Bool)

(assert (=> b!360555 (=> (not res!200635) (not e!220739))))

(declare-datatypes ((List!5520 0))(
  ( (Nil!5517) (Cons!5516 (h!6372 (_ BitVec 64)) (t!10678 List!5520)) )
))
(declare-fun arrayNoDuplicates!0 (array!20175 (_ BitVec 32) List!5520) Bool)

(assert (=> b!360555 (= res!200635 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5517))))

(declare-fun b!360556 () Bool)

(declare-fun res!200630 () Bool)

(assert (=> b!360556 (=> (not res!200630) (not e!220739))))

(assert (=> b!360556 (= res!200630 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9929 _keys!1456))))))

(declare-fun b!360557 () Bool)

(declare-fun res!200633 () Bool)

(assert (=> b!360557 (=> (not res!200633) (not e!220739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360557 (= res!200633 (validKeyInArray!0 k0!1077))))

(declare-fun b!360558 () Bool)

(declare-fun res!200631 () Bool)

(assert (=> b!360558 (=> (not res!200631) (not e!220739))))

(assert (=> b!360558 (= res!200631 (and (= (size!9928 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9929 _keys!1456) (size!9928 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360559 () Bool)

(assert (=> b!360559 (= e!220738 tp_is_empty!8325)))

(declare-fun b!360560 () Bool)

(declare-fun res!200634 () Bool)

(assert (=> b!360560 (=> (not res!200634) (not e!220739))))

(assert (=> b!360560 (= res!200634 (not (= (select (arr!9577 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!360561 () Bool)

(assert (=> b!360561 (= e!220741 tp_is_empty!8325)))

(assert (= (and start!35896 res!200636) b!360558))

(assert (= (and b!360558 res!200631) b!360553))

(assert (= (and b!360553 res!200632) b!360555))

(assert (= (and b!360555 res!200635) b!360557))

(assert (= (and b!360557 res!200633) b!360556))

(assert (= (and b!360556 res!200630) b!360551))

(assert (= (and b!360551 res!200637) b!360560))

(assert (= (and b!360560 res!200634) b!360554))

(assert (= (and b!360552 condMapEmpty!13998) mapIsEmpty!13998))

(assert (= (and b!360552 (not condMapEmpty!13998)) mapNonEmpty!13998))

(get-info :version)

(assert (= (and mapNonEmpty!13998 ((_ is ValueCellFull!3819) mapValue!13998)) b!360559))

(assert (= (and b!360552 ((_ is ValueCellFull!3819) mapDefault!13998)) b!360561))

(assert (= start!35896 b!360552))

(declare-fun m!357651 () Bool)

(assert (=> b!360553 m!357651))

(declare-fun m!357653 () Bool)

(assert (=> start!35896 m!357653))

(declare-fun m!357655 () Bool)

(assert (=> start!35896 m!357655))

(declare-fun m!357657 () Bool)

(assert (=> start!35896 m!357657))

(declare-fun m!357659 () Bool)

(assert (=> mapNonEmpty!13998 m!357659))

(declare-fun m!357661 () Bool)

(assert (=> b!360551 m!357661))

(declare-fun m!357663 () Bool)

(assert (=> b!360555 m!357663))

(declare-fun m!357665 () Bool)

(assert (=> b!360560 m!357665))

(declare-fun m!357667 () Bool)

(assert (=> b!360554 m!357667))

(declare-fun m!357669 () Bool)

(assert (=> b!360554 m!357669))

(declare-fun m!357671 () Bool)

(assert (=> b!360557 m!357671))

(check-sat (not b!360551) (not b!360554) tp_is_empty!8325 (not mapNonEmpty!13998) (not b!360553) (not b!360555) (not b!360557) (not start!35896))
(check-sat)
