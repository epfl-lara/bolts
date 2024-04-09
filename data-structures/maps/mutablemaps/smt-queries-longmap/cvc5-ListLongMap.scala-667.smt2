; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16490 () Bool)

(assert start!16490)

(declare-fun b!163865 () Bool)

(declare-fun b_free!3811 () Bool)

(declare-fun b_next!3811 () Bool)

(assert (=> b!163865 (= b_free!3811 (not b_next!3811))))

(declare-fun tp!14027 () Bool)

(declare-fun b_and!10243 () Bool)

(assert (=> b!163865 (= tp!14027 b_and!10243)))

(declare-fun mapIsEmpty!6132 () Bool)

(declare-fun mapRes!6132 () Bool)

(assert (=> mapIsEmpty!6132 mapRes!6132))

(declare-fun b!163857 () Bool)

(declare-fun e!107524 () Bool)

(declare-fun e!107527 () Bool)

(assert (=> b!163857 (= e!107524 e!107527)))

(declare-fun res!77540 () Bool)

(assert (=> b!163857 (=> (not res!77540) (not e!107527))))

(declare-datatypes ((SeekEntryResult!416 0))(
  ( (MissingZero!416 (index!3832 (_ BitVec 32))) (Found!416 (index!3833 (_ BitVec 32))) (Intermediate!416 (undefined!1228 Bool) (index!3834 (_ BitVec 32)) (x!18188 (_ BitVec 32))) (Undefined!416) (MissingVacant!416 (index!3835 (_ BitVec 32))) )
))
(declare-fun lt!82814 () SeekEntryResult!416)

(assert (=> b!163857 (= res!77540 (and (not (is-Undefined!416 lt!82814)) (not (is-MissingVacant!416 lt!82814)) (not (is-MissingZero!416 lt!82814)) (is-Found!416 lt!82814)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4465 0))(
  ( (V!4466 (val!1851 Int)) )
))
(declare-datatypes ((ValueCell!1463 0))(
  ( (ValueCellFull!1463 (v!3712 V!4465)) (EmptyCell!1463) )
))
(declare-datatypes ((array!6318 0))(
  ( (array!6319 (arr!2996 (Array (_ BitVec 32) (_ BitVec 64))) (size!3284 (_ BitVec 32))) )
))
(declare-datatypes ((array!6320 0))(
  ( (array!6321 (arr!2997 (Array (_ BitVec 32) ValueCell!1463)) (size!3285 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1834 0))(
  ( (LongMapFixedSize!1835 (defaultEntry!3359 Int) (mask!8036 (_ BitVec 32)) (extraKeys!3100 (_ BitVec 32)) (zeroValue!3202 V!4465) (minValue!3202 V!4465) (_size!966 (_ BitVec 32)) (_keys!5180 array!6318) (_values!3342 array!6320) (_vacant!966 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1834)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6318 (_ BitVec 32)) SeekEntryResult!416)

(assert (=> b!163857 (= lt!82814 (seekEntryOrOpen!0 key!828 (_keys!5180 thiss!1248) (mask!8036 thiss!1248)))))

(declare-fun b!163858 () Bool)

(declare-fun e!107525 () Bool)

(declare-fun tp_is_empty!3613 () Bool)

(assert (=> b!163858 (= e!107525 tp_is_empty!3613)))

(declare-fun b!163859 () Bool)

(declare-fun res!77541 () Bool)

(assert (=> b!163859 (=> (not res!77541) (not e!107527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163859 (= res!77541 (validMask!0 (mask!8036 thiss!1248)))))

(declare-fun b!163860 () Bool)

(declare-fun e!107522 () Bool)

(assert (=> b!163860 (= e!107522 tp_is_empty!3613)))

(declare-fun b!163861 () Bool)

(declare-datatypes ((List!2014 0))(
  ( (Nil!2011) (Cons!2010 (h!2627 (_ BitVec 64)) (t!6824 List!2014)) )
))
(declare-fun arrayNoDuplicates!0 (array!6318 (_ BitVec 32) List!2014) Bool)

(assert (=> b!163861 (= e!107527 (not (arrayNoDuplicates!0 (_keys!5180 thiss!1248) #b00000000000000000000000000000000 Nil!2011)))))

(declare-fun mapNonEmpty!6132 () Bool)

(declare-fun tp!14028 () Bool)

(assert (=> mapNonEmpty!6132 (= mapRes!6132 (and tp!14028 e!107522))))

(declare-fun mapRest!6132 () (Array (_ BitVec 32) ValueCell!1463))

(declare-fun mapKey!6132 () (_ BitVec 32))

(declare-fun mapValue!6132 () ValueCell!1463)

(assert (=> mapNonEmpty!6132 (= (arr!2997 (_values!3342 thiss!1248)) (store mapRest!6132 mapKey!6132 mapValue!6132))))

(declare-fun b!163862 () Bool)

(declare-fun e!107521 () Bool)

(assert (=> b!163862 (= e!107521 (and e!107525 mapRes!6132))))

(declare-fun condMapEmpty!6132 () Bool)

(declare-fun mapDefault!6132 () ValueCell!1463)

