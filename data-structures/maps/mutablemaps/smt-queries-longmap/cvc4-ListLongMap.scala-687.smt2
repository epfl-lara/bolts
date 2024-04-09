; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16642 () Bool)

(assert start!16642)

(declare-fun b!166025 () Bool)

(declare-fun b_free!3935 () Bool)

(declare-fun b_next!3935 () Bool)

(assert (=> b!166025 (= b_free!3935 (not b_next!3935))))

(declare-fun tp!14405 () Bool)

(declare-fun b_and!10367 () Bool)

(assert (=> b!166025 (= tp!14405 b_and!10367)))

(declare-fun b!166021 () Bool)

(declare-fun res!78885 () Bool)

(declare-fun e!108905 () Bool)

(assert (=> b!166021 (=> (not res!78885) (not e!108905))))

(declare-datatypes ((V!4629 0))(
  ( (V!4630 (val!1913 Int)) )
))
(declare-datatypes ((ValueCell!1525 0))(
  ( (ValueCellFull!1525 (v!3774 V!4629)) (EmptyCell!1525) )
))
(declare-datatypes ((array!6570 0))(
  ( (array!6571 (arr!3120 (Array (_ BitVec 32) (_ BitVec 64))) (size!3408 (_ BitVec 32))) )
))
(declare-datatypes ((array!6572 0))(
  ( (array!6573 (arr!3121 (Array (_ BitVec 32) ValueCell!1525)) (size!3409 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1958 0))(
  ( (LongMapFixedSize!1959 (defaultEntry!3421 Int) (mask!8144 (_ BitVec 32)) (extraKeys!3162 (_ BitVec 32)) (zeroValue!3264 V!4629) (minValue!3264 V!4629) (_size!1028 (_ BitVec 32)) (_keys!5246 array!6570) (_values!3404 array!6572) (_vacant!1028 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1958)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166021 (= res!78885 (validMask!0 (mask!8144 thiss!1248)))))

(declare-fun b!166022 () Bool)

(declare-fun e!108903 () Bool)

(assert (=> b!166022 (= e!108903 e!108905)))

(declare-fun res!78883 () Bool)

(assert (=> b!166022 (=> (not res!78883) (not e!108905))))

(declare-datatypes ((SeekEntryResult!458 0))(
  ( (MissingZero!458 (index!4000 (_ BitVec 32))) (Found!458 (index!4001 (_ BitVec 32))) (Intermediate!458 (undefined!1270 Bool) (index!4002 (_ BitVec 32)) (x!18406 (_ BitVec 32))) (Undefined!458) (MissingVacant!458 (index!4003 (_ BitVec 32))) )
))
(declare-fun lt!83207 () SeekEntryResult!458)

(assert (=> b!166022 (= res!78883 (and (not (is-Undefined!458 lt!83207)) (not (is-MissingVacant!458 lt!83207)) (not (is-MissingZero!458 lt!83207)) (is-Found!458 lt!83207)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6570 (_ BitVec 32)) SeekEntryResult!458)

(assert (=> b!166022 (= lt!83207 (seekEntryOrOpen!0 key!828 (_keys!5246 thiss!1248) (mask!8144 thiss!1248)))))

(declare-fun mapNonEmpty!6324 () Bool)

(declare-fun mapRes!6324 () Bool)

(declare-fun tp!14406 () Bool)

(declare-fun e!108901 () Bool)

(assert (=> mapNonEmpty!6324 (= mapRes!6324 (and tp!14406 e!108901))))

(declare-fun mapKey!6324 () (_ BitVec 32))

(declare-fun mapRest!6324 () (Array (_ BitVec 32) ValueCell!1525))

(declare-fun mapValue!6324 () ValueCell!1525)

(assert (=> mapNonEmpty!6324 (= (arr!3121 (_values!3404 thiss!1248)) (store mapRest!6324 mapKey!6324 mapValue!6324))))

(declare-fun b!166023 () Bool)

(declare-fun tp_is_empty!3737 () Bool)

(assert (=> b!166023 (= e!108901 tp_is_empty!3737)))

(declare-fun b!166024 () Bool)

(declare-fun res!78884 () Bool)

(assert (=> b!166024 (=> (not res!78884) (not e!108905))))

(assert (=> b!166024 (= res!78884 (and (= (size!3409 (_values!3404 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8144 thiss!1248))) (= (size!3408 (_keys!5246 thiss!1248)) (size!3409 (_values!3404 thiss!1248))) (bvsge (mask!8144 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3162 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3162 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!108907 () Bool)

(declare-fun e!108902 () Bool)

(declare-fun array_inv!1993 (array!6570) Bool)

(declare-fun array_inv!1994 (array!6572) Bool)

(assert (=> b!166025 (= e!108907 (and tp!14405 tp_is_empty!3737 (array_inv!1993 (_keys!5246 thiss!1248)) (array_inv!1994 (_values!3404 thiss!1248)) e!108902))))

(declare-fun mapIsEmpty!6324 () Bool)

(assert (=> mapIsEmpty!6324 mapRes!6324))

(declare-fun b!166026 () Bool)

(assert (=> b!166026 (= e!108905 false)))

(declare-fun lt!83206 () Bool)

(declare-datatypes ((List!2098 0))(
  ( (Nil!2095) (Cons!2094 (h!2711 (_ BitVec 64)) (t!6908 List!2098)) )
))
(declare-fun arrayNoDuplicates!0 (array!6570 (_ BitVec 32) List!2098) Bool)

(assert (=> b!166026 (= lt!83206 (arrayNoDuplicates!0 (_keys!5246 thiss!1248) #b00000000000000000000000000000000 Nil!2095))))

(declare-fun b!166027 () Bool)

(declare-fun e!108906 () Bool)

(assert (=> b!166027 (= e!108906 tp_is_empty!3737)))

(declare-fun b!166028 () Bool)

(declare-fun res!78887 () Bool)

(assert (=> b!166028 (=> (not res!78887) (not e!108903))))

(assert (=> b!166028 (= res!78887 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166020 () Bool)

(declare-fun res!78888 () Bool)

(assert (=> b!166020 (=> (not res!78888) (not e!108905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6570 (_ BitVec 32)) Bool)

(assert (=> b!166020 (= res!78888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5246 thiss!1248) (mask!8144 thiss!1248)))))

(declare-fun res!78882 () Bool)

(assert (=> start!16642 (=> (not res!78882) (not e!108903))))

(declare-fun valid!855 (LongMapFixedSize!1958) Bool)

(assert (=> start!16642 (= res!78882 (valid!855 thiss!1248))))

(assert (=> start!16642 e!108903))

(assert (=> start!16642 e!108907))

(assert (=> start!16642 true))

(declare-fun b!166029 () Bool)

(assert (=> b!166029 (= e!108902 (and e!108906 mapRes!6324))))

(declare-fun condMapEmpty!6324 () Bool)

(declare-fun mapDefault!6324 () ValueCell!1525)

