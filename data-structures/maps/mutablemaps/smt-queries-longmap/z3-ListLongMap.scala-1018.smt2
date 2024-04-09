; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21722 () Bool)

(assert start!21722)

(declare-fun b!218147 () Bool)

(declare-fun b_free!5859 () Bool)

(declare-fun b_next!5859 () Bool)

(assert (=> b!218147 (= b_free!5859 (not b_next!5859))))

(declare-fun tp!20712 () Bool)

(declare-fun b_and!12767 () Bool)

(assert (=> b!218147 (= tp!20712 b_and!12767)))

(declare-fun b!218141 () Bool)

(declare-fun res!106944 () Bool)

(declare-fun e!141914 () Bool)

(assert (=> b!218141 (=> (not res!106944) (not e!141914))))

(declare-datatypes ((V!7275 0))(
  ( (V!7276 (val!2905 Int)) )
))
(declare-datatypes ((ValueCell!2517 0))(
  ( (ValueCellFull!2517 (v!4919 V!7275)) (EmptyCell!2517) )
))
(declare-datatypes ((array!10680 0))(
  ( (array!10681 (arr!5061 (Array (_ BitVec 32) ValueCell!2517)) (size!5393 (_ BitVec 32))) )
))
(declare-datatypes ((array!10682 0))(
  ( (array!10683 (arr!5062 (Array (_ BitVec 32) (_ BitVec 64))) (size!5394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2934 0))(
  ( (LongMapFixedSize!2935 (defaultEntry!4117 Int) (mask!9888 (_ BitVec 32)) (extraKeys!3854 (_ BitVec 32)) (zeroValue!3958 V!7275) (minValue!3958 V!7275) (_size!1516 (_ BitVec 32)) (_keys!6166 array!10682) (_values!4100 array!10680) (_vacant!1516 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2934)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218141 (= res!106944 (validMask!0 (mask!9888 thiss!1504)))))

(declare-fun b!218142 () Bool)

(declare-fun e!141913 () Bool)

(declare-fun tp_is_empty!5721 () Bool)

(assert (=> b!218142 (= e!141913 tp_is_empty!5721)))

(declare-fun b!218143 () Bool)

(declare-fun res!106943 () Bool)

(assert (=> b!218143 (=> (not res!106943) (not e!141914))))

(assert (=> b!218143 (= res!106943 (and (= (size!5393 (_values!4100 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9888 thiss!1504))) (= (size!5394 (_keys!6166 thiss!1504)) (size!5393 (_values!4100 thiss!1504))) (bvsge (mask!9888 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3854 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3854 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9744 () Bool)

(declare-fun mapRes!9744 () Bool)

(assert (=> mapIsEmpty!9744 mapRes!9744))

(declare-fun b!218145 () Bool)

(declare-fun res!106940 () Bool)

(declare-fun e!141915 () Bool)

(assert (=> b!218145 (=> (not res!106940) (not e!141915))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!218145 (= res!106940 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218146 () Bool)

(assert (=> b!218146 (= e!141915 e!141914)))

(declare-fun res!106942 () Bool)

(assert (=> b!218146 (=> (not res!106942) (not e!141914))))

(declare-datatypes ((SeekEntryResult!792 0))(
  ( (MissingZero!792 (index!5338 (_ BitVec 32))) (Found!792 (index!5339 (_ BitVec 32))) (Intermediate!792 (undefined!1604 Bool) (index!5340 (_ BitVec 32)) (x!22824 (_ BitVec 32))) (Undefined!792) (MissingVacant!792 (index!5341 (_ BitVec 32))) )
))
(declare-fun lt!111504 () SeekEntryResult!792)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218146 (= res!106942 (or (= lt!111504 (MissingZero!792 index!297)) (= lt!111504 (MissingVacant!792 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10682 (_ BitVec 32)) SeekEntryResult!792)

(assert (=> b!218146 (= lt!111504 (seekEntryOrOpen!0 key!932 (_keys!6166 thiss!1504) (mask!9888 thiss!1504)))))

(declare-fun e!141911 () Bool)

(declare-fun e!141912 () Bool)

(declare-fun array_inv!3345 (array!10682) Bool)

(declare-fun array_inv!3346 (array!10680) Bool)

(assert (=> b!218147 (= e!141912 (and tp!20712 tp_is_empty!5721 (array_inv!3345 (_keys!6166 thiss!1504)) (array_inv!3346 (_values!4100 thiss!1504)) e!141911))))

(declare-fun b!218148 () Bool)

(declare-fun res!106939 () Bool)

(assert (=> b!218148 (=> (not res!106939) (not e!141914))))

(declare-datatypes ((tuple2!4312 0))(
  ( (tuple2!4313 (_1!2166 (_ BitVec 64)) (_2!2166 V!7275)) )
))
(declare-datatypes ((List!3242 0))(
  ( (Nil!3239) (Cons!3238 (h!3885 tuple2!4312) (t!8205 List!3242)) )
))
(declare-datatypes ((ListLongMap!3239 0))(
  ( (ListLongMap!3240 (toList!1635 List!3242)) )
))
(declare-fun contains!1470 (ListLongMap!3239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1158 (array!10682 array!10680 (_ BitVec 32) (_ BitVec 32) V!7275 V!7275 (_ BitVec 32) Int) ListLongMap!3239)

(assert (=> b!218148 (= res!106939 (not (contains!1470 (getCurrentListMap!1158 (_keys!6166 thiss!1504) (_values!4100 thiss!1504) (mask!9888 thiss!1504) (extraKeys!3854 thiss!1504) (zeroValue!3958 thiss!1504) (minValue!3958 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4117 thiss!1504)) key!932)))))

(declare-fun b!218149 () Bool)

(assert (=> b!218149 (= e!141914 false)))

(declare-fun lt!111505 () Bool)

(declare-datatypes ((List!3243 0))(
  ( (Nil!3240) (Cons!3239 (h!3886 (_ BitVec 64)) (t!8206 List!3243)) )
))
(declare-fun arrayNoDuplicates!0 (array!10682 (_ BitVec 32) List!3243) Bool)

(assert (=> b!218149 (= lt!111505 (arrayNoDuplicates!0 (_keys!6166 thiss!1504) #b00000000000000000000000000000000 Nil!3240))))

(declare-fun mapNonEmpty!9744 () Bool)

(declare-fun tp!20711 () Bool)

(assert (=> mapNonEmpty!9744 (= mapRes!9744 (and tp!20711 e!141913))))

(declare-fun mapValue!9744 () ValueCell!2517)

(declare-fun mapRest!9744 () (Array (_ BitVec 32) ValueCell!2517))

(declare-fun mapKey!9744 () (_ BitVec 32))

(assert (=> mapNonEmpty!9744 (= (arr!5061 (_values!4100 thiss!1504)) (store mapRest!9744 mapKey!9744 mapValue!9744))))

(declare-fun b!218150 () Bool)

(declare-fun e!141909 () Bool)

(assert (=> b!218150 (= e!141911 (and e!141909 mapRes!9744))))

(declare-fun condMapEmpty!9744 () Bool)

(declare-fun mapDefault!9744 () ValueCell!2517)

(assert (=> b!218150 (= condMapEmpty!9744 (= (arr!5061 (_values!4100 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2517)) mapDefault!9744)))))

(declare-fun b!218151 () Bool)

(assert (=> b!218151 (= e!141909 tp_is_empty!5721)))

(declare-fun res!106941 () Bool)

(assert (=> start!21722 (=> (not res!106941) (not e!141915))))

(declare-fun valid!1181 (LongMapFixedSize!2934) Bool)

(assert (=> start!21722 (= res!106941 (valid!1181 thiss!1504))))

(assert (=> start!21722 e!141915))

(assert (=> start!21722 e!141912))

(assert (=> start!21722 true))

(declare-fun b!218144 () Bool)

(declare-fun res!106938 () Bool)

(assert (=> b!218144 (=> (not res!106938) (not e!141914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10682 (_ BitVec 32)) Bool)

(assert (=> b!218144 (= res!106938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6166 thiss!1504) (mask!9888 thiss!1504)))))

(assert (= (and start!21722 res!106941) b!218145))

(assert (= (and b!218145 res!106940) b!218146))

(assert (= (and b!218146 res!106942) b!218148))

(assert (= (and b!218148 res!106939) b!218141))

(assert (= (and b!218141 res!106944) b!218143))

(assert (= (and b!218143 res!106943) b!218144))

(assert (= (and b!218144 res!106938) b!218149))

(assert (= (and b!218150 condMapEmpty!9744) mapIsEmpty!9744))

(assert (= (and b!218150 (not condMapEmpty!9744)) mapNonEmpty!9744))

(get-info :version)

(assert (= (and mapNonEmpty!9744 ((_ is ValueCellFull!2517) mapValue!9744)) b!218142))

(assert (= (and b!218150 ((_ is ValueCellFull!2517) mapDefault!9744)) b!218151))

(assert (= b!218147 b!218150))

(assert (= start!21722 b!218147))

(declare-fun m!244187 () Bool)

(assert (=> b!218146 m!244187))

(declare-fun m!244189 () Bool)

(assert (=> b!218147 m!244189))

(declare-fun m!244191 () Bool)

(assert (=> b!218147 m!244191))

(declare-fun m!244193 () Bool)

(assert (=> b!218149 m!244193))

(declare-fun m!244195 () Bool)

(assert (=> start!21722 m!244195))

(declare-fun m!244197 () Bool)

(assert (=> b!218144 m!244197))

(declare-fun m!244199 () Bool)

(assert (=> b!218148 m!244199))

(assert (=> b!218148 m!244199))

(declare-fun m!244201 () Bool)

(assert (=> b!218148 m!244201))

(declare-fun m!244203 () Bool)

(assert (=> mapNonEmpty!9744 m!244203))

(declare-fun m!244205 () Bool)

(assert (=> b!218141 m!244205))

(check-sat (not b!218148) b_and!12767 (not b!218146) (not b!218144) (not b!218147) (not start!21722) tp_is_empty!5721 (not b_next!5859) (not b!218149) (not b!218141) (not mapNonEmpty!9744))
(check-sat b_and!12767 (not b_next!5859))
