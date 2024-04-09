; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76748 () Bool)

(assert start!76748)

(declare-fun b!897803 () Bool)

(declare-fun b_free!16001 () Bool)

(declare-fun b_next!16001 () Bool)

(assert (=> b!897803 (= b_free!16001 (not b_next!16001))))

(declare-fun tp!56063 () Bool)

(declare-fun b_and!26311 () Bool)

(assert (=> b!897803 (= tp!56063 b_and!26311)))

(declare-fun mapIsEmpty!29139 () Bool)

(declare-fun mapRes!29139 () Bool)

(assert (=> mapIsEmpty!29139 mapRes!29139))

(declare-fun b!897800 () Bool)

(declare-fun e!502169 () Bool)

(declare-fun tp_is_empty!18329 () Bool)

(assert (=> b!897800 (= e!502169 tp_is_empty!18329)))

(declare-fun b!897801 () Bool)

(declare-fun e!502166 () Bool)

(declare-datatypes ((SeekEntryResult!8906 0))(
  ( (MissingZero!8906 (index!37994 (_ BitVec 32))) (Found!8906 (index!37995 (_ BitVec 32))) (Intermediate!8906 (undefined!9718 Bool) (index!37996 (_ BitVec 32)) (x!76496 (_ BitVec 32))) (Undefined!8906) (MissingVacant!8906 (index!37997 (_ BitVec 32))) )
))
(declare-fun lt!405303 () SeekEntryResult!8906)

(declare-datatypes ((array!52676 0))(
  ( (array!52677 (arr!25314 (Array (_ BitVec 32) (_ BitVec 64))) (size!25770 (_ BitVec 32))) )
))
(declare-datatypes ((V!29403 0))(
  ( (V!29404 (val!9215 Int)) )
))
(declare-datatypes ((ValueCell!8683 0))(
  ( (ValueCellFull!8683 (v!11702 V!29403)) (EmptyCell!8683) )
))
(declare-datatypes ((array!52678 0))(
  ( (array!52679 (arr!25315 (Array (_ BitVec 32) ValueCell!8683)) (size!25771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4382 0))(
  ( (LongMapFixedSize!4383 (defaultEntry!5403 Int) (mask!26106 (_ BitVec 32)) (extraKeys!5116 (_ BitVec 32)) (zeroValue!5220 V!29403) (minValue!5220 V!29403) (_size!2246 (_ BitVec 32)) (_keys!10166 array!52676) (_values!5407 array!52678) (_vacant!2246 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4382)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897801 (= e!502166 (inRange!0 (index!37995 lt!405303) (mask!26106 thiss!1181)))))

(declare-fun b!897802 () Bool)

(declare-fun res!606910 () Bool)

(declare-fun e!502168 () Bool)

(assert (=> b!897802 (=> (not res!606910) (not e!502168))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897802 (= res!606910 (not (= key!785 (bvneg key!785))))))

(declare-fun e!502170 () Bool)

(declare-fun e!502163 () Bool)

(declare-fun array_inv!19842 (array!52676) Bool)

(declare-fun array_inv!19843 (array!52678) Bool)

(assert (=> b!897803 (= e!502170 (and tp!56063 tp_is_empty!18329 (array_inv!19842 (_keys!10166 thiss!1181)) (array_inv!19843 (_values!5407 thiss!1181)) e!502163))))

(declare-fun b!897804 () Bool)

(declare-fun res!606912 () Bool)

(declare-fun e!502165 () Bool)

(assert (=> b!897804 (=> res!606912 e!502165)))

(declare-datatypes ((List!17911 0))(
  ( (Nil!17908) (Cons!17907 (h!19049 (_ BitVec 64)) (t!25258 List!17911)) )
))
(declare-fun arrayNoDuplicates!0 (array!52676 (_ BitVec 32) List!17911) Bool)

(assert (=> b!897804 (= res!606912 (not (arrayNoDuplicates!0 (_keys!10166 thiss!1181) #b00000000000000000000000000000000 Nil!17908)))))

(declare-fun b!897805 () Bool)

(declare-fun e!502171 () Bool)

(assert (=> b!897805 (= e!502171 e!502165)))

(declare-fun res!606915 () Bool)

(assert (=> b!897805 (=> res!606915 e!502165)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897805 (= res!606915 (not (validMask!0 (mask!26106 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897805 (arrayContainsKey!0 (_keys!10166 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30493 0))(
  ( (Unit!30494) )
))
(declare-fun lt!405302 () Unit!30493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52676 (_ BitVec 64) (_ BitVec 32)) Unit!30493)

(assert (=> b!897805 (= lt!405302 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10166 thiss!1181) key!785 (index!37995 lt!405303)))))

(declare-fun b!897806 () Bool)

(assert (=> b!897806 (= e!502163 (and e!502169 mapRes!29139))))

(declare-fun condMapEmpty!29139 () Bool)

(declare-fun mapDefault!29139 () ValueCell!8683)

