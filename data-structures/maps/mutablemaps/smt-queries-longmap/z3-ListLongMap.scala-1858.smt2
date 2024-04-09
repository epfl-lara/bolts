; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33538 () Bool)

(assert start!33538)

(declare-fun b_free!6819 () Bool)

(declare-fun b_next!6819 () Bool)

(assert (=> start!33538 (= b_free!6819 (not b_next!6819))))

(declare-fun tp!23952 () Bool)

(declare-fun b_and!14011 () Bool)

(assert (=> start!33538 (= tp!23952 b_and!14011)))

(declare-fun mapNonEmpty!11544 () Bool)

(declare-fun mapRes!11544 () Bool)

(declare-fun tp!23951 () Bool)

(declare-fun e!204235 () Bool)

(assert (=> mapNonEmpty!11544 (= mapRes!11544 (and tp!23951 e!204235))))

(declare-fun mapKey!11544 () (_ BitVec 32))

(declare-datatypes ((V!10005 0))(
  ( (V!10006 (val!3430 Int)) )
))
(declare-datatypes ((ValueCell!3042 0))(
  ( (ValueCellFull!3042 (v!5585 V!10005)) (EmptyCell!3042) )
))
(declare-fun mapValue!11544 () ValueCell!3042)

(declare-datatypes ((array!17135 0))(
  ( (array!17136 (arr!8098 (Array (_ BitVec 32) ValueCell!3042)) (size!8450 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17135)

(declare-fun mapRest!11544 () (Array (_ BitVec 32) ValueCell!3042))

(assert (=> mapNonEmpty!11544 (= (arr!8098 _values!1525) (store mapRest!11544 mapKey!11544 mapValue!11544))))

(declare-fun b!332572 () Bool)

(declare-fun tp_is_empty!6771 () Bool)

(assert (=> b!332572 (= e!204235 tp_is_empty!6771)))

(declare-fun b!332573 () Bool)

(declare-fun e!204234 () Bool)

(assert (=> b!332573 (= e!204234 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10005)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17137 0))(
  ( (array!17138 (arr!8099 (Array (_ BitVec 32) (_ BitVec 64))) (size!8451 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17137)

(declare-fun lt!159003 () Bool)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10005)

(declare-datatypes ((tuple2!4992 0))(
  ( (tuple2!4993 (_1!2506 (_ BitVec 64)) (_2!2506 V!10005)) )
))
(declare-datatypes ((List!4630 0))(
  ( (Nil!4627) (Cons!4626 (h!5482 tuple2!4992) (t!9720 List!4630)) )
))
(declare-datatypes ((ListLongMap!3919 0))(
  ( (ListLongMap!3920 (toList!1975 List!4630)) )
))
(declare-fun contains!2012 (ListLongMap!3919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1498 (array!17137 array!17135 (_ BitVec 32) (_ BitVec 32) V!10005 V!10005 (_ BitVec 32) Int) ListLongMap!3919)

(assert (=> b!332573 (= lt!159003 (contains!2012 (getCurrentListMap!1498 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348))))

(declare-fun b!332574 () Bool)

(declare-fun res!183300 () Bool)

(assert (=> b!332574 (=> (not res!183300) (not e!204234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332574 (= res!183300 (validKeyInArray!0 k0!1348))))

(declare-fun b!332575 () Bool)

(declare-fun e!204236 () Bool)

(declare-fun e!204233 () Bool)

(assert (=> b!332575 (= e!204236 (and e!204233 mapRes!11544))))

(declare-fun condMapEmpty!11544 () Bool)

(declare-fun mapDefault!11544 () ValueCell!3042)

(assert (=> b!332575 (= condMapEmpty!11544 (= (arr!8098 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3042)) mapDefault!11544)))))

(declare-fun mapIsEmpty!11544 () Bool)

(assert (=> mapIsEmpty!11544 mapRes!11544))

(declare-fun b!332576 () Bool)

(declare-fun res!183301 () Bool)

(assert (=> b!332576 (=> (not res!183301) (not e!204234))))

(assert (=> b!332576 (= res!183301 (and (= (size!8450 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8451 _keys!1895) (size!8450 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332577 () Bool)

(declare-fun res!183298 () Bool)

(assert (=> b!332577 (=> (not res!183298) (not e!204234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17137 (_ BitVec 32)) Bool)

(assert (=> b!332577 (= res!183298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332578 () Bool)

(declare-fun res!183299 () Bool)

(assert (=> b!332578 (=> (not res!183299) (not e!204234))))

(declare-datatypes ((List!4631 0))(
  ( (Nil!4628) (Cons!4627 (h!5483 (_ BitVec 64)) (t!9721 List!4631)) )
))
(declare-fun arrayNoDuplicates!0 (array!17137 (_ BitVec 32) List!4631) Bool)

(assert (=> b!332578 (= res!183299 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4628))))

(declare-fun b!332579 () Bool)

(assert (=> b!332579 (= e!204233 tp_is_empty!6771)))

(declare-fun res!183302 () Bool)

(assert (=> start!33538 (=> (not res!183302) (not e!204234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33538 (= res!183302 (validMask!0 mask!2385))))

(assert (=> start!33538 e!204234))

(assert (=> start!33538 true))

(assert (=> start!33538 tp_is_empty!6771))

(assert (=> start!33538 tp!23952))

(declare-fun array_inv!6020 (array!17135) Bool)

(assert (=> start!33538 (and (array_inv!6020 _values!1525) e!204236)))

(declare-fun array_inv!6021 (array!17137) Bool)

(assert (=> start!33538 (array_inv!6021 _keys!1895)))

(assert (= (and start!33538 res!183302) b!332576))

(assert (= (and b!332576 res!183301) b!332577))

(assert (= (and b!332577 res!183298) b!332578))

(assert (= (and b!332578 res!183299) b!332574))

(assert (= (and b!332574 res!183300) b!332573))

(assert (= (and b!332575 condMapEmpty!11544) mapIsEmpty!11544))

(assert (= (and b!332575 (not condMapEmpty!11544)) mapNonEmpty!11544))

(get-info :version)

(assert (= (and mapNonEmpty!11544 ((_ is ValueCellFull!3042) mapValue!11544)) b!332572))

(assert (= (and b!332575 ((_ is ValueCellFull!3042) mapDefault!11544)) b!332579))

(assert (= start!33538 b!332575))

(declare-fun m!337025 () Bool)

(assert (=> b!332573 m!337025))

(assert (=> b!332573 m!337025))

(declare-fun m!337027 () Bool)

(assert (=> b!332573 m!337027))

(declare-fun m!337029 () Bool)

(assert (=> start!33538 m!337029))

(declare-fun m!337031 () Bool)

(assert (=> start!33538 m!337031))

(declare-fun m!337033 () Bool)

(assert (=> start!33538 m!337033))

(declare-fun m!337035 () Bool)

(assert (=> b!332574 m!337035))

(declare-fun m!337037 () Bool)

(assert (=> mapNonEmpty!11544 m!337037))

(declare-fun m!337039 () Bool)

(assert (=> b!332578 m!337039))

(declare-fun m!337041 () Bool)

(assert (=> b!332577 m!337041))

(check-sat (not b!332577) (not mapNonEmpty!11544) (not b!332574) (not start!33538) (not b!332573) (not b_next!6819) (not b!332578) tp_is_empty!6771 b_and!14011)
(check-sat b_and!14011 (not b_next!6819))
