; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16640 () Bool)

(assert start!16640)

(declare-fun b!165988 () Bool)

(declare-fun b_free!3933 () Bool)

(declare-fun b_next!3933 () Bool)

(assert (=> b!165988 (= b_free!3933 (not b_next!3933))))

(declare-fun tp!14400 () Bool)

(declare-fun b_and!10365 () Bool)

(assert (=> b!165988 (= tp!14400 b_and!10365)))

(declare-fun b!165987 () Bool)

(declare-fun e!108881 () Bool)

(declare-fun tp_is_empty!3735 () Bool)

(assert (=> b!165987 (= e!108881 tp_is_empty!3735)))

(declare-fun e!108886 () Bool)

(declare-fun e!108884 () Bool)

(declare-datatypes ((V!4627 0))(
  ( (V!4628 (val!1912 Int)) )
))
(declare-datatypes ((ValueCell!1524 0))(
  ( (ValueCellFull!1524 (v!3773 V!4627)) (EmptyCell!1524) )
))
(declare-datatypes ((array!6566 0))(
  ( (array!6567 (arr!3118 (Array (_ BitVec 32) (_ BitVec 64))) (size!3406 (_ BitVec 32))) )
))
(declare-datatypes ((array!6568 0))(
  ( (array!6569 (arr!3119 (Array (_ BitVec 32) ValueCell!1524)) (size!3407 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1956 0))(
  ( (LongMapFixedSize!1957 (defaultEntry!3420 Int) (mask!8143 (_ BitVec 32)) (extraKeys!3161 (_ BitVec 32)) (zeroValue!3263 V!4627) (minValue!3263 V!4627) (_size!1027 (_ BitVec 32)) (_keys!5245 array!6566) (_values!3403 array!6568) (_vacant!1027 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1956)

(declare-fun array_inv!1991 (array!6566) Bool)

(declare-fun array_inv!1992 (array!6568) Bool)

(assert (=> b!165988 (= e!108884 (and tp!14400 tp_is_empty!3735 (array_inv!1991 (_keys!5245 thiss!1248)) (array_inv!1992 (_values!3403 thiss!1248)) e!108886))))

(declare-fun b!165989 () Bool)

(declare-fun e!108880 () Bool)

(declare-fun e!108885 () Bool)

(assert (=> b!165989 (= e!108880 e!108885)))

(declare-fun res!78867 () Bool)

(assert (=> b!165989 (=> (not res!78867) (not e!108885))))

(declare-datatypes ((SeekEntryResult!457 0))(
  ( (MissingZero!457 (index!3996 (_ BitVec 32))) (Found!457 (index!3997 (_ BitVec 32))) (Intermediate!457 (undefined!1269 Bool) (index!3998 (_ BitVec 32)) (x!18405 (_ BitVec 32))) (Undefined!457) (MissingVacant!457 (index!3999 (_ BitVec 32))) )
))
(declare-fun lt!83201 () SeekEntryResult!457)

(get-info :version)

(assert (=> b!165989 (= res!78867 (and (not ((_ is Undefined!457) lt!83201)) (not ((_ is MissingVacant!457) lt!83201)) (not ((_ is MissingZero!457) lt!83201)) ((_ is Found!457) lt!83201)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6566 (_ BitVec 32)) SeekEntryResult!457)

(assert (=> b!165989 (= lt!83201 (seekEntryOrOpen!0 key!828 (_keys!5245 thiss!1248) (mask!8143 thiss!1248)))))

(declare-fun b!165990 () Bool)

(declare-fun res!78863 () Bool)

(assert (=> b!165990 (=> (not res!78863) (not e!108880))))

(assert (=> b!165990 (= res!78863 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165991 () Bool)

(assert (=> b!165991 (= e!108885 false)))

(declare-fun lt!83200 () Bool)

(declare-datatypes ((List!2096 0))(
  ( (Nil!2093) (Cons!2092 (h!2709 (_ BitVec 64)) (t!6906 List!2096)) )
))
(declare-fun arrayNoDuplicates!0 (array!6566 (_ BitVec 32) List!2096) Bool)

(assert (=> b!165991 (= lt!83200 (arrayNoDuplicates!0 (_keys!5245 thiss!1248) #b00000000000000000000000000000000 Nil!2093))))

(declare-fun b!165992 () Bool)

(declare-fun res!78866 () Bool)

(assert (=> b!165992 (=> (not res!78866) (not e!108885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165992 (= res!78866 (validMask!0 (mask!8143 thiss!1248)))))

(declare-fun b!165993 () Bool)

(declare-fun mapRes!6321 () Bool)

(assert (=> b!165993 (= e!108886 (and e!108881 mapRes!6321))))

(declare-fun condMapEmpty!6321 () Bool)

(declare-fun mapDefault!6321 () ValueCell!1524)

(assert (=> b!165993 (= condMapEmpty!6321 (= (arr!3119 (_values!3403 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1524)) mapDefault!6321)))))

(declare-fun b!165994 () Bool)

(declare-fun res!78861 () Bool)

(assert (=> b!165994 (=> (not res!78861) (not e!108885))))

(assert (=> b!165994 (= res!78861 (and (= (size!3407 (_values!3403 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8143 thiss!1248))) (= (size!3406 (_keys!5245 thiss!1248)) (size!3407 (_values!3403 thiss!1248))) (bvsge (mask!8143 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3161 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3161 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6321 () Bool)

(declare-fun tp!14399 () Bool)

(declare-fun e!108883 () Bool)

(assert (=> mapNonEmpty!6321 (= mapRes!6321 (and tp!14399 e!108883))))

(declare-fun mapValue!6321 () ValueCell!1524)

(declare-fun mapKey!6321 () (_ BitVec 32))

(declare-fun mapRest!6321 () (Array (_ BitVec 32) ValueCell!1524))

(assert (=> mapNonEmpty!6321 (= (arr!3119 (_values!3403 thiss!1248)) (store mapRest!6321 mapKey!6321 mapValue!6321))))

(declare-fun res!78862 () Bool)

(assert (=> start!16640 (=> (not res!78862) (not e!108880))))

(declare-fun valid!854 (LongMapFixedSize!1956) Bool)

(assert (=> start!16640 (= res!78862 (valid!854 thiss!1248))))

(assert (=> start!16640 e!108880))

(assert (=> start!16640 e!108884))

(assert (=> start!16640 true))

(declare-fun mapIsEmpty!6321 () Bool)

(assert (=> mapIsEmpty!6321 mapRes!6321))

(declare-fun b!165995 () Bool)

(assert (=> b!165995 (= e!108883 tp_is_empty!3735)))

(declare-fun b!165996 () Bool)

(declare-fun res!78864 () Bool)

(assert (=> b!165996 (=> (not res!78864) (not e!108885))))

(declare-datatypes ((tuple2!3088 0))(
  ( (tuple2!3089 (_1!1554 (_ BitVec 64)) (_2!1554 V!4627)) )
))
(declare-datatypes ((List!2097 0))(
  ( (Nil!2094) (Cons!2093 (h!2710 tuple2!3088) (t!6907 List!2097)) )
))
(declare-datatypes ((ListLongMap!2057 0))(
  ( (ListLongMap!2058 (toList!1044 List!2097)) )
))
(declare-fun contains!1080 (ListLongMap!2057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!697 (array!6566 array!6568 (_ BitVec 32) (_ BitVec 32) V!4627 V!4627 (_ BitVec 32) Int) ListLongMap!2057)

(assert (=> b!165996 (= res!78864 (not (contains!1080 (getCurrentListMap!697 (_keys!5245 thiss!1248) (_values!3403 thiss!1248) (mask!8143 thiss!1248) (extraKeys!3161 thiss!1248) (zeroValue!3263 thiss!1248) (minValue!3263 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3420 thiss!1248)) key!828)))))

(declare-fun b!165997 () Bool)

(declare-fun res!78865 () Bool)

(assert (=> b!165997 (=> (not res!78865) (not e!108885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6566 (_ BitVec 32)) Bool)

(assert (=> b!165997 (= res!78865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5245 thiss!1248) (mask!8143 thiss!1248)))))

(assert (= (and start!16640 res!78862) b!165990))

(assert (= (and b!165990 res!78863) b!165989))

(assert (= (and b!165989 res!78867) b!165996))

(assert (= (and b!165996 res!78864) b!165992))

(assert (= (and b!165992 res!78866) b!165994))

(assert (= (and b!165994 res!78861) b!165997))

(assert (= (and b!165997 res!78865) b!165991))

(assert (= (and b!165993 condMapEmpty!6321) mapIsEmpty!6321))

(assert (= (and b!165993 (not condMapEmpty!6321)) mapNonEmpty!6321))

(assert (= (and mapNonEmpty!6321 ((_ is ValueCellFull!1524) mapValue!6321)) b!165995))

(assert (= (and b!165993 ((_ is ValueCellFull!1524) mapDefault!6321)) b!165987))

(assert (= b!165988 b!165993))

(assert (= start!16640 b!165988))

(declare-fun m!195589 () Bool)

(assert (=> b!165991 m!195589))

(declare-fun m!195591 () Bool)

(assert (=> b!165988 m!195591))

(declare-fun m!195593 () Bool)

(assert (=> b!165988 m!195593))

(declare-fun m!195595 () Bool)

(assert (=> mapNonEmpty!6321 m!195595))

(declare-fun m!195597 () Bool)

(assert (=> b!165989 m!195597))

(declare-fun m!195599 () Bool)

(assert (=> b!165992 m!195599))

(declare-fun m!195601 () Bool)

(assert (=> b!165997 m!195601))

(declare-fun m!195603 () Bool)

(assert (=> b!165996 m!195603))

(assert (=> b!165996 m!195603))

(declare-fun m!195605 () Bool)

(assert (=> b!165996 m!195605))

(declare-fun m!195607 () Bool)

(assert (=> start!16640 m!195607))

(check-sat (not b!165996) (not b!165997) (not b!165992) (not b_next!3933) (not b!165991) (not b!165989) (not start!16640) tp_is_empty!3735 (not b!165988) b_and!10365 (not mapNonEmpty!6321))
(check-sat b_and!10365 (not b_next!3933))
