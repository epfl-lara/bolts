; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16550 () Bool)

(assert start!16550)

(declare-fun b!164503 () Bool)

(declare-fun b_free!3843 () Bool)

(declare-fun b_next!3843 () Bool)

(assert (=> b!164503 (= b_free!3843 (not b_next!3843))))

(declare-fun tp!14130 () Bool)

(declare-fun b_and!10275 () Bool)

(assert (=> b!164503 (= tp!14130 b_and!10275)))

(declare-fun b!164502 () Bool)

(declare-fun res!77916 () Bool)

(declare-fun e!107936 () Bool)

(assert (=> b!164502 (=> (not res!77916) (not e!107936))))

(declare-datatypes ((V!4507 0))(
  ( (V!4508 (val!1867 Int)) )
))
(declare-datatypes ((ValueCell!1479 0))(
  ( (ValueCellFull!1479 (v!3728 V!4507)) (EmptyCell!1479) )
))
(declare-datatypes ((array!6386 0))(
  ( (array!6387 (arr!3028 (Array (_ BitVec 32) (_ BitVec 64))) (size!3316 (_ BitVec 32))) )
))
(declare-datatypes ((array!6388 0))(
  ( (array!6389 (arr!3029 (Array (_ BitVec 32) ValueCell!1479)) (size!3317 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1866 0))(
  ( (LongMapFixedSize!1867 (defaultEntry!3375 Int) (mask!8068 (_ BitVec 32)) (extraKeys!3116 (_ BitVec 32)) (zeroValue!3218 V!4507) (minValue!3218 V!4507) (_size!982 (_ BitVec 32)) (_keys!5200 array!6386) (_values!3358 array!6388) (_vacant!982 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1866)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164502 (= res!77916 (validMask!0 (mask!8068 thiss!1248)))))

(declare-fun mapNonEmpty!6186 () Bool)

(declare-fun mapRes!6186 () Bool)

(declare-fun tp!14129 () Bool)

(declare-fun e!107940 () Bool)

(assert (=> mapNonEmpty!6186 (= mapRes!6186 (and tp!14129 e!107940))))

(declare-fun mapRest!6186 () (Array (_ BitVec 32) ValueCell!1479))

(declare-fun mapKey!6186 () (_ BitVec 32))

(declare-fun mapValue!6186 () ValueCell!1479)

(assert (=> mapNonEmpty!6186 (= (arr!3029 (_values!3358 thiss!1248)) (store mapRest!6186 mapKey!6186 mapValue!6186))))

(declare-fun e!107937 () Bool)

(declare-fun tp_is_empty!3645 () Bool)

(declare-fun e!107935 () Bool)

(declare-fun array_inv!1933 (array!6386) Bool)

(declare-fun array_inv!1934 (array!6388) Bool)

(assert (=> b!164503 (= e!107937 (and tp!14130 tp_is_empty!3645 (array_inv!1933 (_keys!5200 thiss!1248)) (array_inv!1934 (_values!3358 thiss!1248)) e!107935))))

(declare-fun mapIsEmpty!6186 () Bool)

(assert (=> mapIsEmpty!6186 mapRes!6186))

(declare-fun b!164504 () Bool)

(declare-fun res!77922 () Bool)

(declare-fun e!107939 () Bool)

(assert (=> b!164504 (=> (not res!77922) (not e!107939))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164504 (= res!77922 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164505 () Bool)

(declare-fun res!77921 () Bool)

(assert (=> b!164505 (=> (not res!77921) (not e!107936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6386 (_ BitVec 32)) Bool)

(assert (=> b!164505 (= res!77921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5200 thiss!1248) (mask!8068 thiss!1248)))))

(declare-fun b!164506 () Bool)

(assert (=> b!164506 (= e!107940 tp_is_empty!3645)))

(declare-fun b!164507 () Bool)

(declare-fun res!77917 () Bool)

(assert (=> b!164507 (=> (not res!77917) (not e!107936))))

(declare-datatypes ((tuple2!3028 0))(
  ( (tuple2!3029 (_1!1524 (_ BitVec 64)) (_2!1524 V!4507)) )
))
(declare-datatypes ((List!2034 0))(
  ( (Nil!2031) (Cons!2030 (h!2647 tuple2!3028) (t!6844 List!2034)) )
))
(declare-datatypes ((ListLongMap!1997 0))(
  ( (ListLongMap!1998 (toList!1014 List!2034)) )
))
(declare-fun contains!1050 (ListLongMap!1997 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!667 (array!6386 array!6388 (_ BitVec 32) (_ BitVec 32) V!4507 V!4507 (_ BitVec 32) Int) ListLongMap!1997)

(assert (=> b!164507 (= res!77917 (contains!1050 (getCurrentListMap!667 (_keys!5200 thiss!1248) (_values!3358 thiss!1248) (mask!8068 thiss!1248) (extraKeys!3116 thiss!1248) (zeroValue!3218 thiss!1248) (minValue!3218 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3375 thiss!1248)) key!828))))

(declare-fun b!164508 () Bool)

(assert (=> b!164508 (= e!107939 e!107936)))

(declare-fun res!77918 () Bool)

(assert (=> b!164508 (=> (not res!77918) (not e!107936))))

(declare-datatypes ((SeekEntryResult!429 0))(
  ( (MissingZero!429 (index!3884 (_ BitVec 32))) (Found!429 (index!3885 (_ BitVec 32))) (Intermediate!429 (undefined!1241 Bool) (index!3886 (_ BitVec 32)) (x!18257 (_ BitVec 32))) (Undefined!429) (MissingVacant!429 (index!3887 (_ BitVec 32))) )
))
(declare-fun lt!82931 () SeekEntryResult!429)

(get-info :version)

(assert (=> b!164508 (= res!77918 (and (not ((_ is Undefined!429) lt!82931)) (not ((_ is MissingVacant!429) lt!82931)) (not ((_ is MissingZero!429) lt!82931)) ((_ is Found!429) lt!82931)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6386 (_ BitVec 32)) SeekEntryResult!429)

(assert (=> b!164508 (= lt!82931 (seekEntryOrOpen!0 key!828 (_keys!5200 thiss!1248) (mask!8068 thiss!1248)))))

(declare-fun b!164510 () Bool)

(declare-fun e!107941 () Bool)

(assert (=> b!164510 (= e!107941 tp_is_empty!3645)))

(declare-fun b!164511 () Bool)

(assert (=> b!164511 (= e!107935 (and e!107941 mapRes!6186))))

(declare-fun condMapEmpty!6186 () Bool)

(declare-fun mapDefault!6186 () ValueCell!1479)

(assert (=> b!164511 (= condMapEmpty!6186 (= (arr!3029 (_values!3358 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1479)) mapDefault!6186)))))

(declare-fun b!164512 () Bool)

(declare-fun res!77920 () Bool)

(assert (=> b!164512 (=> (not res!77920) (not e!107936))))

(assert (=> b!164512 (= res!77920 (and (= (size!3317 (_values!3358 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8068 thiss!1248))) (= (size!3316 (_keys!5200 thiss!1248)) (size!3317 (_values!3358 thiss!1248))) (bvsge (mask!8068 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3116 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3116 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!77919 () Bool)

(assert (=> start!16550 (=> (not res!77919) (not e!107939))))

(declare-fun valid!823 (LongMapFixedSize!1866) Bool)

(assert (=> start!16550 (= res!77919 (valid!823 thiss!1248))))

(assert (=> start!16550 e!107939))

(assert (=> start!16550 e!107937))

(assert (=> start!16550 true))

(declare-fun b!164509 () Bool)

(assert (=> b!164509 (= e!107936 false)))

(declare-fun lt!82930 () Bool)

(declare-datatypes ((List!2035 0))(
  ( (Nil!2032) (Cons!2031 (h!2648 (_ BitVec 64)) (t!6845 List!2035)) )
))
(declare-fun arrayNoDuplicates!0 (array!6386 (_ BitVec 32) List!2035) Bool)

(assert (=> b!164509 (= lt!82930 (arrayNoDuplicates!0 (_keys!5200 thiss!1248) #b00000000000000000000000000000000 Nil!2032))))

(assert (= (and start!16550 res!77919) b!164504))

(assert (= (and b!164504 res!77922) b!164508))

(assert (= (and b!164508 res!77918) b!164507))

(assert (= (and b!164507 res!77917) b!164502))

(assert (= (and b!164502 res!77916) b!164512))

(assert (= (and b!164512 res!77920) b!164505))

(assert (= (and b!164505 res!77921) b!164509))

(assert (= (and b!164511 condMapEmpty!6186) mapIsEmpty!6186))

(assert (= (and b!164511 (not condMapEmpty!6186)) mapNonEmpty!6186))

(assert (= (and mapNonEmpty!6186 ((_ is ValueCellFull!1479) mapValue!6186)) b!164506))

(assert (= (and b!164511 ((_ is ValueCellFull!1479) mapDefault!6186)) b!164510))

(assert (= b!164503 b!164511))

(assert (= start!16550 b!164503))

(declare-fun m!194689 () Bool)

(assert (=> b!164502 m!194689))

(declare-fun m!194691 () Bool)

(assert (=> b!164507 m!194691))

(assert (=> b!164507 m!194691))

(declare-fun m!194693 () Bool)

(assert (=> b!164507 m!194693))

(declare-fun m!194695 () Bool)

(assert (=> b!164505 m!194695))

(declare-fun m!194697 () Bool)

(assert (=> start!16550 m!194697))

(declare-fun m!194699 () Bool)

(assert (=> b!164503 m!194699))

(declare-fun m!194701 () Bool)

(assert (=> b!164503 m!194701))

(declare-fun m!194703 () Bool)

(assert (=> b!164508 m!194703))

(declare-fun m!194705 () Bool)

(assert (=> mapNonEmpty!6186 m!194705))

(declare-fun m!194707 () Bool)

(assert (=> b!164509 m!194707))

(check-sat (not b!164509) (not b!164508) (not b!164505) b_and!10275 (not start!16550) (not b_next!3843) (not b!164502) tp_is_empty!3645 (not mapNonEmpty!6186) (not b!164507) (not b!164503))
(check-sat b_and!10275 (not b_next!3843))
