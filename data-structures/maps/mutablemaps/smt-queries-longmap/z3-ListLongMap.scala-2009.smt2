; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35044 () Bool)

(assert start!35044)

(declare-fun b_free!7725 () Bool)

(declare-fun b_next!7725 () Bool)

(assert (=> start!35044 (= b_free!7725 (not b_next!7725))))

(declare-fun tp!26753 () Bool)

(declare-fun b_and!14973 () Bool)

(assert (=> start!35044 (= tp!26753 b_and!14973)))

(declare-fun b!351003 () Bool)

(declare-fun res!194714 () Bool)

(declare-fun e!214968 () Bool)

(assert (=> b!351003 (=> (not res!194714) (not e!214968))))

(declare-datatypes ((array!18895 0))(
  ( (array!18896 (arr!8950 (Array (_ BitVec 32) (_ BitVec 64))) (size!9302 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18895)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18895 (_ BitVec 32)) Bool)

(assert (=> b!351003 (= res!194714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351004 () Bool)

(declare-fun res!194712 () Bool)

(assert (=> b!351004 (=> (not res!194712) (not e!214968))))

(declare-datatypes ((List!5232 0))(
  ( (Nil!5229) (Cons!5228 (h!6084 (_ BitVec 64)) (t!10378 List!5232)) )
))
(declare-fun arrayNoDuplicates!0 (array!18895 (_ BitVec 32) List!5232) Bool)

(assert (=> b!351004 (= res!194712 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5229))))

(declare-fun b!351005 () Bool)

(declare-fun res!194711 () Bool)

(assert (=> b!351005 (=> (not res!194711) (not e!214968))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351005 (= res!194711 (validKeyInArray!0 k0!1348))))

(declare-fun res!194710 () Bool)

(assert (=> start!35044 (=> (not res!194710) (not e!214968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35044 (= res!194710 (validMask!0 mask!2385))))

(assert (=> start!35044 e!214968))

(assert (=> start!35044 true))

(declare-fun tp_is_empty!7677 () Bool)

(assert (=> start!35044 tp_is_empty!7677))

(assert (=> start!35044 tp!26753))

(declare-datatypes ((V!11213 0))(
  ( (V!11214 (val!3883 Int)) )
))
(declare-datatypes ((ValueCell!3495 0))(
  ( (ValueCellFull!3495 (v!6066 V!11213)) (EmptyCell!3495) )
))
(declare-datatypes ((array!18897 0))(
  ( (array!18898 (arr!8951 (Array (_ BitVec 32) ValueCell!3495)) (size!9303 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18897)

(declare-fun e!214967 () Bool)

(declare-fun array_inv!6598 (array!18897) Bool)

(assert (=> start!35044 (and (array_inv!6598 _values!1525) e!214967)))

(declare-fun array_inv!6599 (array!18895) Bool)

(assert (=> start!35044 (array_inv!6599 _keys!1895)))

(declare-fun b!351006 () Bool)

(declare-fun res!194708 () Bool)

(declare-fun e!214972 () Bool)

(assert (=> b!351006 (=> (not res!194708) (not e!214972))))

(declare-fun arrayContainsKey!0 (array!18895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351006 (= res!194708 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351007 () Bool)

(assert (=> b!351007 (= e!214968 e!214972)))

(declare-fun res!194713 () Bool)

(assert (=> b!351007 (=> (not res!194713) (not e!214972))))

(declare-datatypes ((SeekEntryResult!3443 0))(
  ( (MissingZero!3443 (index!15951 (_ BitVec 32))) (Found!3443 (index!15952 (_ BitVec 32))) (Intermediate!3443 (undefined!4255 Bool) (index!15953 (_ BitVec 32)) (x!34942 (_ BitVec 32))) (Undefined!3443) (MissingVacant!3443 (index!15954 (_ BitVec 32))) )
))
(declare-fun lt!164681 () SeekEntryResult!3443)

(get-info :version)

(assert (=> b!351007 (= res!194713 (and (not ((_ is Found!3443) lt!164681)) (not ((_ is MissingZero!3443) lt!164681)) ((_ is MissingVacant!3443) lt!164681)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18895 (_ BitVec 32)) SeekEntryResult!3443)

(assert (=> b!351007 (= lt!164681 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351008 () Bool)

(declare-fun e!214970 () Bool)

(assert (=> b!351008 (= e!214970 tp_is_empty!7677)))

(declare-fun mapIsEmpty!12987 () Bool)

(declare-fun mapRes!12987 () Bool)

(assert (=> mapIsEmpty!12987 mapRes!12987))

(declare-fun b!351009 () Bool)

(assert (=> b!351009 (= e!214967 (and e!214970 mapRes!12987))))

(declare-fun condMapEmpty!12987 () Bool)

(declare-fun mapDefault!12987 () ValueCell!3495)

(assert (=> b!351009 (= condMapEmpty!12987 (= (arr!8951 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3495)) mapDefault!12987)))))

(declare-fun b!351010 () Bool)

(declare-fun res!194709 () Bool)

(assert (=> b!351010 (=> (not res!194709) (not e!214968))))

(declare-fun zeroValue!1467 () V!11213)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11213)

(declare-datatypes ((tuple2!5594 0))(
  ( (tuple2!5595 (_1!2807 (_ BitVec 64)) (_2!2807 V!11213)) )
))
(declare-datatypes ((List!5233 0))(
  ( (Nil!5230) (Cons!5229 (h!6085 tuple2!5594) (t!10379 List!5233)) )
))
(declare-datatypes ((ListLongMap!4521 0))(
  ( (ListLongMap!4522 (toList!2276 List!5233)) )
))
(declare-fun contains!2341 (ListLongMap!4521 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1793 (array!18895 array!18897 (_ BitVec 32) (_ BitVec 32) V!11213 V!11213 (_ BitVec 32) Int) ListLongMap!4521)

(assert (=> b!351010 (= res!194709 (not (contains!2341 (getCurrentListMap!1793 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!351011 () Bool)

(assert (=> b!351011 (= e!214972 false)))

(declare-fun lt!164682 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18895 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351011 (= lt!164682 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12987 () Bool)

(declare-fun tp!26754 () Bool)

(declare-fun e!214971 () Bool)

(assert (=> mapNonEmpty!12987 (= mapRes!12987 (and tp!26754 e!214971))))

(declare-fun mapRest!12987 () (Array (_ BitVec 32) ValueCell!3495))

(declare-fun mapKey!12987 () (_ BitVec 32))

(declare-fun mapValue!12987 () ValueCell!3495)

(assert (=> mapNonEmpty!12987 (= (arr!8951 _values!1525) (store mapRest!12987 mapKey!12987 mapValue!12987))))

(declare-fun b!351012 () Bool)

(declare-fun res!194715 () Bool)

(assert (=> b!351012 (=> (not res!194715) (not e!214968))))

(assert (=> b!351012 (= res!194715 (and (= (size!9303 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9302 _keys!1895) (size!9303 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351013 () Bool)

(assert (=> b!351013 (= e!214971 tp_is_empty!7677)))

(assert (= (and start!35044 res!194710) b!351012))

(assert (= (and b!351012 res!194715) b!351003))

(assert (= (and b!351003 res!194714) b!351004))

(assert (= (and b!351004 res!194712) b!351005))

(assert (= (and b!351005 res!194711) b!351010))

(assert (= (and b!351010 res!194709) b!351007))

(assert (= (and b!351007 res!194713) b!351006))

(assert (= (and b!351006 res!194708) b!351011))

(assert (= (and b!351009 condMapEmpty!12987) mapIsEmpty!12987))

(assert (= (and b!351009 (not condMapEmpty!12987)) mapNonEmpty!12987))

(assert (= (and mapNonEmpty!12987 ((_ is ValueCellFull!3495) mapValue!12987)) b!351013))

(assert (= (and b!351009 ((_ is ValueCellFull!3495) mapDefault!12987)) b!351008))

(assert (= start!35044 b!351009))

(declare-fun m!351033 () Bool)

(assert (=> b!351006 m!351033))

(declare-fun m!351035 () Bool)

(assert (=> b!351011 m!351035))

(declare-fun m!351037 () Bool)

(assert (=> b!351005 m!351037))

(declare-fun m!351039 () Bool)

(assert (=> b!351010 m!351039))

(assert (=> b!351010 m!351039))

(declare-fun m!351041 () Bool)

(assert (=> b!351010 m!351041))

(declare-fun m!351043 () Bool)

(assert (=> b!351007 m!351043))

(declare-fun m!351045 () Bool)

(assert (=> b!351004 m!351045))

(declare-fun m!351047 () Bool)

(assert (=> mapNonEmpty!12987 m!351047))

(declare-fun m!351049 () Bool)

(assert (=> b!351003 m!351049))

(declare-fun m!351051 () Bool)

(assert (=> start!35044 m!351051))

(declare-fun m!351053 () Bool)

(assert (=> start!35044 m!351053))

(declare-fun m!351055 () Bool)

(assert (=> start!35044 m!351055))

(check-sat (not b!351005) b_and!14973 tp_is_empty!7677 (not start!35044) (not mapNonEmpty!12987) (not b_next!7725) (not b!351007) (not b!351011) (not b!351010) (not b!351006) (not b!351003) (not b!351004))
(check-sat b_and!14973 (not b_next!7725))
