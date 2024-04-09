; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16774 () Bool)

(assert start!16774)

(declare-fun b!168583 () Bool)

(declare-fun b_free!4067 () Bool)

(declare-fun b_next!4067 () Bool)

(assert (=> b!168583 (= b_free!4067 (not b_next!4067))))

(declare-fun tp!14801 () Bool)

(declare-fun b_and!10499 () Bool)

(assert (=> b!168583 (= tp!14801 b_and!10499)))

(declare-fun mapNonEmpty!6522 () Bool)

(declare-fun mapRes!6522 () Bool)

(declare-fun tp!14802 () Bool)

(declare-fun e!110856 () Bool)

(assert (=> mapNonEmpty!6522 (= mapRes!6522 (and tp!14802 e!110856))))

(declare-datatypes ((V!4805 0))(
  ( (V!4806 (val!1979 Int)) )
))
(declare-datatypes ((ValueCell!1591 0))(
  ( (ValueCellFull!1591 (v!3840 V!4805)) (EmptyCell!1591) )
))
(declare-fun mapRest!6522 () (Array (_ BitVec 32) ValueCell!1591))

(declare-fun mapKey!6522 () (_ BitVec 32))

(declare-datatypes ((array!6834 0))(
  ( (array!6835 (arr!3252 (Array (_ BitVec 32) (_ BitVec 64))) (size!3540 (_ BitVec 32))) )
))
(declare-datatypes ((array!6836 0))(
  ( (array!6837 (arr!3253 (Array (_ BitVec 32) ValueCell!1591)) (size!3541 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2090 0))(
  ( (LongMapFixedSize!2091 (defaultEntry!3487 Int) (mask!8254 (_ BitVec 32)) (extraKeys!3228 (_ BitVec 32)) (zeroValue!3330 V!4805) (minValue!3330 V!4805) (_size!1094 (_ BitVec 32)) (_keys!5312 array!6834) (_values!3470 array!6836) (_vacant!1094 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2090)

(declare-fun mapValue!6522 () ValueCell!1591)

(assert (=> mapNonEmpty!6522 (= (arr!3253 (_values!3470 thiss!1248)) (store mapRest!6522 mapKey!6522 mapValue!6522))))

(declare-fun b!168574 () Bool)

(declare-datatypes ((Unit!5194 0))(
  ( (Unit!5195) )
))
(declare-fun e!110851 () Unit!5194)

(declare-fun lt!84345 () Unit!5194)

(assert (=> b!168574 (= e!110851 lt!84345)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!126 (array!6834 array!6836 (_ BitVec 32) (_ BitVec 32) V!4805 V!4805 (_ BitVec 64) Int) Unit!5194)

(assert (=> b!168574 (= lt!84345 (lemmaInListMapThenSeekEntryOrOpenFindsIt!126 (_keys!5312 thiss!1248) (_values!3470 thiss!1248) (mask!8254 thiss!1248) (extraKeys!3228 thiss!1248) (zeroValue!3330 thiss!1248) (minValue!3330 thiss!1248) key!828 (defaultEntry!3487 thiss!1248)))))

(declare-fun res!80268 () Bool)

(declare-datatypes ((SeekEntryResult!515 0))(
  ( (MissingZero!515 (index!4228 (_ BitVec 32))) (Found!515 (index!4229 (_ BitVec 32))) (Intermediate!515 (undefined!1327 Bool) (index!4230 (_ BitVec 32)) (x!18639 (_ BitVec 32))) (Undefined!515) (MissingVacant!515 (index!4231 (_ BitVec 32))) )
))
(declare-fun lt!84348 () SeekEntryResult!515)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168574 (= res!80268 (inRange!0 (index!4229 lt!84348) (mask!8254 thiss!1248)))))

(declare-fun e!110852 () Bool)

(assert (=> b!168574 (=> (not res!80268) (not e!110852))))

(assert (=> b!168574 e!110852))

(declare-fun res!80269 () Bool)

(declare-fun e!110854 () Bool)

(assert (=> start!16774 (=> (not res!80269) (not e!110854))))

(declare-fun valid!897 (LongMapFixedSize!2090) Bool)

(assert (=> start!16774 (= res!80269 (valid!897 thiss!1248))))

(assert (=> start!16774 e!110854))

(declare-fun e!110859 () Bool)

(assert (=> start!16774 e!110859))

(assert (=> start!16774 true))

(declare-fun tp_is_empty!3869 () Bool)

(assert (=> start!16774 tp_is_empty!3869))

(declare-fun b!168575 () Bool)

(declare-fun e!110853 () Bool)

(assert (=> b!168575 (= e!110853 true)))

(declare-fun lt!84347 () Bool)

(declare-datatypes ((List!2187 0))(
  ( (Nil!2184) (Cons!2183 (h!2800 (_ BitVec 64)) (t!6997 List!2187)) )
))
(declare-fun arrayNoDuplicates!0 (array!6834 (_ BitVec 32) List!2187) Bool)

(assert (=> b!168575 (= lt!84347 (arrayNoDuplicates!0 (_keys!5312 thiss!1248) #b00000000000000000000000000000000 Nil!2184))))

(declare-fun b!168576 () Bool)

(declare-fun res!80274 () Bool)

(assert (=> b!168576 (=> res!80274 e!110853)))

(assert (=> b!168576 (= res!80274 (or (not (= (size!3541 (_values!3470 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8254 thiss!1248)))) (not (= (size!3540 (_keys!5312 thiss!1248)) (size!3541 (_values!3470 thiss!1248)))) (bvslt (mask!8254 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3228 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3228 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!168577 () Bool)

(declare-fun e!110857 () Bool)

(assert (=> b!168577 (= e!110857 tp_is_empty!3869)))

(declare-fun b!168578 () Bool)

(assert (=> b!168578 (= e!110852 (= (select (arr!3252 (_keys!5312 thiss!1248)) (index!4229 lt!84348)) key!828))))

(declare-fun b!168579 () Bool)

(declare-fun res!80270 () Bool)

(assert (=> b!168579 (=> res!80270 e!110853)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6834 (_ BitVec 32)) Bool)

(assert (=> b!168579 (= res!80270 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5312 thiss!1248) (mask!8254 thiss!1248))))))

(declare-fun b!168580 () Bool)

(declare-fun e!110860 () Bool)

(assert (=> b!168580 (= e!110854 e!110860)))

(declare-fun res!80273 () Bool)

(assert (=> b!168580 (=> (not res!80273) (not e!110860))))

(assert (=> b!168580 (= res!80273 (and (not (is-Undefined!515 lt!84348)) (not (is-MissingVacant!515 lt!84348)) (not (is-MissingZero!515 lt!84348)) (is-Found!515 lt!84348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6834 (_ BitVec 32)) SeekEntryResult!515)

(assert (=> b!168580 (= lt!84348 (seekEntryOrOpen!0 key!828 (_keys!5312 thiss!1248) (mask!8254 thiss!1248)))))

(declare-fun b!168581 () Bool)

(declare-fun e!110858 () Bool)

(assert (=> b!168581 (= e!110858 (and e!110857 mapRes!6522))))

(declare-fun condMapEmpty!6522 () Bool)

(declare-fun mapDefault!6522 () ValueCell!1591)

