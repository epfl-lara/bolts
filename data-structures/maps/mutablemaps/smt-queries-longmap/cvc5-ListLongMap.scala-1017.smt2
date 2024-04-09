; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21714 () Bool)

(assert start!21714)

(declare-fun b!218011 () Bool)

(declare-fun b_free!5851 () Bool)

(declare-fun b_next!5851 () Bool)

(assert (=> b!218011 (= b_free!5851 (not b_next!5851))))

(declare-fun tp!20688 () Bool)

(declare-fun b_and!12759 () Bool)

(assert (=> b!218011 (= tp!20688 b_and!12759)))

(declare-fun b!218009 () Bool)

(declare-fun res!106855 () Bool)

(declare-fun e!141825 () Bool)

(assert (=> b!218009 (=> (not res!106855) (not e!141825))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!218009 (= res!106855 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218010 () Bool)

(declare-fun res!106854 () Bool)

(declare-fun e!141831 () Bool)

(assert (=> b!218010 (=> (not res!106854) (not e!141831))))

(declare-datatypes ((V!7265 0))(
  ( (V!7266 (val!2901 Int)) )
))
(declare-datatypes ((ValueCell!2513 0))(
  ( (ValueCellFull!2513 (v!4915 V!7265)) (EmptyCell!2513) )
))
(declare-datatypes ((array!10664 0))(
  ( (array!10665 (arr!5053 (Array (_ BitVec 32) ValueCell!2513)) (size!5385 (_ BitVec 32))) )
))
(declare-datatypes ((array!10666 0))(
  ( (array!10667 (arr!5054 (Array (_ BitVec 32) (_ BitVec 64))) (size!5386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2926 0))(
  ( (LongMapFixedSize!2927 (defaultEntry!4113 Int) (mask!9882 (_ BitVec 32)) (extraKeys!3850 (_ BitVec 32)) (zeroValue!3954 V!7265) (minValue!3954 V!7265) (_size!1512 (_ BitVec 32)) (_keys!6162 array!10666) (_values!4096 array!10664) (_vacant!1512 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2926)

(assert (=> b!218010 (= res!106854 (and (= (size!5385 (_values!4096 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9882 thiss!1504))) (= (size!5386 (_keys!6162 thiss!1504)) (size!5385 (_values!4096 thiss!1504))) (bvsge (mask!9882 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3850 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3850 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!5713 () Bool)

(declare-fun e!141828 () Bool)

(declare-fun e!141829 () Bool)

(declare-fun array_inv!3337 (array!10666) Bool)

(declare-fun array_inv!3338 (array!10664) Bool)

(assert (=> b!218011 (= e!141829 (and tp!20688 tp_is_empty!5713 (array_inv!3337 (_keys!6162 thiss!1504)) (array_inv!3338 (_values!4096 thiss!1504)) e!141828))))

(declare-fun b!218012 () Bool)

(assert (=> b!218012 (= e!141831 false)))

(declare-fun lt!111481 () Bool)

(declare-datatypes ((List!3236 0))(
  ( (Nil!3233) (Cons!3232 (h!3879 (_ BitVec 64)) (t!8199 List!3236)) )
))
(declare-fun arrayNoDuplicates!0 (array!10666 (_ BitVec 32) List!3236) Bool)

(assert (=> b!218012 (= lt!111481 (arrayNoDuplicates!0 (_keys!6162 thiss!1504) #b00000000000000000000000000000000 Nil!3233))))

(declare-fun b!218013 () Bool)

(assert (=> b!218013 (= e!141825 e!141831)))

(declare-fun res!106860 () Bool)

(assert (=> b!218013 (=> (not res!106860) (not e!141831))))

(declare-datatypes ((SeekEntryResult!789 0))(
  ( (MissingZero!789 (index!5326 (_ BitVec 32))) (Found!789 (index!5327 (_ BitVec 32))) (Intermediate!789 (undefined!1601 Bool) (index!5328 (_ BitVec 32)) (x!22813 (_ BitVec 32))) (Undefined!789) (MissingVacant!789 (index!5329 (_ BitVec 32))) )
))
(declare-fun lt!111480 () SeekEntryResult!789)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218013 (= res!106860 (or (= lt!111480 (MissingZero!789 index!297)) (= lt!111480 (MissingVacant!789 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10666 (_ BitVec 32)) SeekEntryResult!789)

(assert (=> b!218013 (= lt!111480 (seekEntryOrOpen!0 key!932 (_keys!6162 thiss!1504) (mask!9882 thiss!1504)))))

(declare-fun b!218014 () Bool)

(declare-fun e!141826 () Bool)

(assert (=> b!218014 (= e!141826 tp_is_empty!5713)))

(declare-fun b!218015 () Bool)

(declare-fun res!106856 () Bool)

(assert (=> b!218015 (=> (not res!106856) (not e!141831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10666 (_ BitVec 32)) Bool)

(assert (=> b!218015 (= res!106856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6162 thiss!1504) (mask!9882 thiss!1504)))))

(declare-fun res!106857 () Bool)

(assert (=> start!21714 (=> (not res!106857) (not e!141825))))

(declare-fun valid!1178 (LongMapFixedSize!2926) Bool)

(assert (=> start!21714 (= res!106857 (valid!1178 thiss!1504))))

(assert (=> start!21714 e!141825))

(assert (=> start!21714 e!141829))

(assert (=> start!21714 true))

(declare-fun b!218016 () Bool)

(declare-fun res!106858 () Bool)

(assert (=> b!218016 (=> (not res!106858) (not e!141831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218016 (= res!106858 (validMask!0 (mask!9882 thiss!1504)))))

(declare-fun b!218017 () Bool)

(declare-fun e!141827 () Bool)

(assert (=> b!218017 (= e!141827 tp_is_empty!5713)))

(declare-fun b!218018 () Bool)

(declare-fun res!106859 () Bool)

(assert (=> b!218018 (=> (not res!106859) (not e!141831))))

(declare-datatypes ((tuple2!4306 0))(
  ( (tuple2!4307 (_1!2163 (_ BitVec 64)) (_2!2163 V!7265)) )
))
(declare-datatypes ((List!3237 0))(
  ( (Nil!3234) (Cons!3233 (h!3880 tuple2!4306) (t!8200 List!3237)) )
))
(declare-datatypes ((ListLongMap!3233 0))(
  ( (ListLongMap!3234 (toList!1632 List!3237)) )
))
(declare-fun contains!1467 (ListLongMap!3233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1155 (array!10666 array!10664 (_ BitVec 32) (_ BitVec 32) V!7265 V!7265 (_ BitVec 32) Int) ListLongMap!3233)

(assert (=> b!218018 (= res!106859 (not (contains!1467 (getCurrentListMap!1155 (_keys!6162 thiss!1504) (_values!4096 thiss!1504) (mask!9882 thiss!1504) (extraKeys!3850 thiss!1504) (zeroValue!3954 thiss!1504) (minValue!3954 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4113 thiss!1504)) key!932)))))

(declare-fun mapNonEmpty!9732 () Bool)

(declare-fun mapRes!9732 () Bool)

(declare-fun tp!20687 () Bool)

(assert (=> mapNonEmpty!9732 (= mapRes!9732 (and tp!20687 e!141826))))

(declare-fun mapRest!9732 () (Array (_ BitVec 32) ValueCell!2513))

(declare-fun mapValue!9732 () ValueCell!2513)

(declare-fun mapKey!9732 () (_ BitVec 32))

(assert (=> mapNonEmpty!9732 (= (arr!5053 (_values!4096 thiss!1504)) (store mapRest!9732 mapKey!9732 mapValue!9732))))

(declare-fun mapIsEmpty!9732 () Bool)

(assert (=> mapIsEmpty!9732 mapRes!9732))

(declare-fun b!218019 () Bool)

(assert (=> b!218019 (= e!141828 (and e!141827 mapRes!9732))))

(declare-fun condMapEmpty!9732 () Bool)

(declare-fun mapDefault!9732 () ValueCell!2513)

