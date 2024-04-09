; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77220 () Bool)

(assert start!77220)

(declare-fun b!900647 () Bool)

(declare-fun b_free!16061 () Bool)

(declare-fun b_next!16061 () Bool)

(assert (=> b!900647 (= b_free!16061 (not b_next!16061))))

(declare-fun tp!56277 () Bool)

(declare-fun b_and!26403 () Bool)

(assert (=> b!900647 (= tp!56277 b_and!26403)))

(declare-fun b!900644 () Bool)

(declare-fun e!504174 () Bool)

(declare-fun e!504180 () Bool)

(assert (=> b!900644 (= e!504174 (not e!504180))))

(declare-fun res!608291 () Bool)

(assert (=> b!900644 (=> res!608291 e!504180)))

(declare-datatypes ((SeekEntryResult!8931 0))(
  ( (MissingZero!8931 (index!38094 (_ BitVec 32))) (Found!8931 (index!38095 (_ BitVec 32))) (Intermediate!8931 (undefined!9743 Bool) (index!38096 (_ BitVec 32)) (x!76729 (_ BitVec 32))) (Undefined!8931) (MissingVacant!8931 (index!38097 (_ BitVec 32))) )
))
(declare-fun lt!407008 () SeekEntryResult!8931)

(assert (=> b!900644 (= res!608291 (not (is-Found!8931 lt!407008)))))

(declare-fun e!504182 () Bool)

(assert (=> b!900644 e!504182))

(declare-fun res!608288 () Bool)

(assert (=> b!900644 (=> res!608288 e!504182)))

(assert (=> b!900644 (= res!608288 (not (is-Found!8931 lt!407008)))))

(declare-datatypes ((Unit!30571 0))(
  ( (Unit!30572) )
))
(declare-fun lt!407006 () Unit!30571)

(declare-datatypes ((array!52816 0))(
  ( (array!52817 (arr!25374 (Array (_ BitVec 32) (_ BitVec 64))) (size!25834 (_ BitVec 32))) )
))
(declare-datatypes ((V!29483 0))(
  ( (V!29484 (val!9245 Int)) )
))
(declare-datatypes ((ValueCell!8713 0))(
  ( (ValueCellFull!8713 (v!11740 V!29483)) (EmptyCell!8713) )
))
(declare-datatypes ((array!52818 0))(
  ( (array!52819 (arr!25375 (Array (_ BitVec 32) ValueCell!8713)) (size!25835 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4442 0))(
  ( (LongMapFixedSize!4443 (defaultEntry!5457 Int) (mask!26244 (_ BitVec 32)) (extraKeys!5184 (_ BitVec 32)) (zeroValue!5288 V!29483) (minValue!5288 V!29483) (_size!2276 (_ BitVec 32)) (_keys!10260 array!52816) (_values!5475 array!52818) (_vacant!2276 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4442)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!112 (array!52816 array!52818 (_ BitVec 32) (_ BitVec 32) V!29483 V!29483 (_ BitVec 64)) Unit!30571)

(assert (=> b!900644 (= lt!407006 (lemmaSeekEntryGivesInRangeIndex!112 (_keys!10260 thiss!1181) (_values!5475 thiss!1181) (mask!26244 thiss!1181) (extraKeys!5184 thiss!1181) (zeroValue!5288 thiss!1181) (minValue!5288 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52816 (_ BitVec 32)) SeekEntryResult!8931)

(assert (=> b!900644 (= lt!407008 (seekEntry!0 key!785 (_keys!10260 thiss!1181) (mask!26244 thiss!1181)))))

(declare-fun b!900645 () Bool)

(declare-fun res!608293 () Bool)

(declare-fun e!504175 () Bool)

(assert (=> b!900645 (=> res!608293 e!504175)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52816 (_ BitVec 32)) Bool)

(assert (=> b!900645 (= res!608293 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10260 thiss!1181) (mask!26244 thiss!1181))))))

(declare-fun b!900646 () Bool)

(declare-fun res!608294 () Bool)

(assert (=> b!900646 (=> res!608294 e!504175)))

(declare-datatypes ((List!17941 0))(
  ( (Nil!17938) (Cons!17937 (h!19083 (_ BitVec 64)) (t!25304 List!17941)) )
))
(declare-fun arrayNoDuplicates!0 (array!52816 (_ BitVec 32) List!17941) Bool)

(assert (=> b!900646 (= res!608294 (not (arrayNoDuplicates!0 (_keys!10260 thiss!1181) #b00000000000000000000000000000000 Nil!17938)))))

(declare-fun tp_is_empty!18389 () Bool)

(declare-fun e!504178 () Bool)

(declare-fun e!504181 () Bool)

(declare-fun array_inv!19884 (array!52816) Bool)

(declare-fun array_inv!19885 (array!52818) Bool)

(assert (=> b!900647 (= e!504181 (and tp!56277 tp_is_empty!18389 (array_inv!19884 (_keys!10260 thiss!1181)) (array_inv!19885 (_values!5475 thiss!1181)) e!504178))))

(declare-fun res!608290 () Bool)

(assert (=> start!77220 (=> (not res!608290) (not e!504174))))

(declare-fun valid!1690 (LongMapFixedSize!4442) Bool)

(assert (=> start!77220 (= res!608290 (valid!1690 thiss!1181))))

(assert (=> start!77220 e!504174))

(assert (=> start!77220 e!504181))

(assert (=> start!77220 true))

(declare-fun b!900648 () Bool)

(declare-fun res!608287 () Bool)

(assert (=> b!900648 (=> (not res!608287) (not e!504174))))

(assert (=> b!900648 (= res!608287 (not (= key!785 (bvneg key!785))))))

(declare-fun b!900649 () Bool)

(declare-fun e!504177 () Bool)

(declare-fun mapRes!29263 () Bool)

(assert (=> b!900649 (= e!504178 (and e!504177 mapRes!29263))))

(declare-fun condMapEmpty!29263 () Bool)

(declare-fun mapDefault!29263 () ValueCell!8713)

