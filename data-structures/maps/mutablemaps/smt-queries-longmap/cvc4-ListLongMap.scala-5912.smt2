; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76610 () Bool)

(assert start!76610)

(declare-fun b!897005 () Bool)

(declare-fun b_free!15977 () Bool)

(declare-fun b_next!15977 () Bool)

(assert (=> b!897005 (= b_free!15977 (not b_next!15977))))

(declare-fun tp!55978 () Bool)

(declare-fun b_and!26287 () Bool)

(assert (=> b!897005 (= tp!55978 b_and!26287)))

(declare-fun b!897004 () Bool)

(declare-fun e!501587 () Bool)

(declare-datatypes ((array!52620 0))(
  ( (array!52621 (arr!25290 (Array (_ BitVec 32) (_ BitVec 64))) (size!25744 (_ BitVec 32))) )
))
(declare-datatypes ((V!29371 0))(
  ( (V!29372 (val!9203 Int)) )
))
(declare-datatypes ((ValueCell!8671 0))(
  ( (ValueCellFull!8671 (v!11690 V!29371)) (EmptyCell!8671) )
))
(declare-datatypes ((array!52622 0))(
  ( (array!52623 (arr!25291 (Array (_ BitVec 32) ValueCell!8671)) (size!25745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4358 0))(
  ( (LongMapFixedSize!4359 (defaultEntry!5391 Int) (mask!26058 (_ BitVec 32)) (extraKeys!5098 (_ BitVec 32)) (zeroValue!5202 V!29371) (minValue!5202 V!29371) (_size!2234 (_ BitVec 32)) (_keys!10136 array!52620) (_values!5389 array!52622) (_vacant!2234 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4358)

(assert (=> b!897004 (= e!501587 (or (not (= (size!25745 (_values!5389 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26058 thiss!1181)))) (not (= (size!25744 (_keys!10136 thiss!1181)) (size!25745 (_values!5389 thiss!1181)))) (bvslt (mask!26058 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5098 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!29089 () Bool)

(declare-fun mapRes!29089 () Bool)

(declare-fun tp!55977 () Bool)

(declare-fun e!501580 () Bool)

(assert (=> mapNonEmpty!29089 (= mapRes!29089 (and tp!55977 e!501580))))

(declare-fun mapValue!29089 () ValueCell!8671)

(declare-fun mapRest!29089 () (Array (_ BitVec 32) ValueCell!8671))

(declare-fun mapKey!29089 () (_ BitVec 32))

(assert (=> mapNonEmpty!29089 (= (arr!25291 (_values!5389 thiss!1181)) (store mapRest!29089 mapKey!29089 mapValue!29089))))

(declare-fun e!501585 () Bool)

(declare-fun tp_is_empty!18305 () Bool)

(declare-fun e!501579 () Bool)

(declare-fun array_inv!19824 (array!52620) Bool)

(declare-fun array_inv!19825 (array!52622) Bool)

(assert (=> b!897005 (= e!501579 (and tp!55978 tp_is_empty!18305 (array_inv!19824 (_keys!10136 thiss!1181)) (array_inv!19825 (_values!5389 thiss!1181)) e!501585))))

(declare-fun b!897006 () Bool)

(declare-fun e!501586 () Bool)

(declare-fun e!501583 () Bool)

(assert (=> b!897006 (= e!501586 (not e!501583))))

(declare-fun res!606501 () Bool)

(assert (=> b!897006 (=> res!606501 e!501583)))

(declare-datatypes ((SeekEntryResult!8896 0))(
  ( (MissingZero!8896 (index!37954 (_ BitVec 32))) (Found!8896 (index!37955 (_ BitVec 32))) (Intermediate!8896 (undefined!9708 Bool) (index!37956 (_ BitVec 32)) (x!76404 (_ BitVec 32))) (Undefined!8896) (MissingVacant!8896 (index!37957 (_ BitVec 32))) )
))
(declare-fun lt!405025 () SeekEntryResult!8896)

(assert (=> b!897006 (= res!606501 (not (is-Found!8896 lt!405025)))))

(declare-fun e!501582 () Bool)

(assert (=> b!897006 e!501582))

(declare-fun res!606503 () Bool)

(assert (=> b!897006 (=> res!606503 e!501582)))

(assert (=> b!897006 (= res!606503 (not (is-Found!8896 lt!405025)))))

(declare-datatypes ((Unit!30473 0))(
  ( (Unit!30474) )
))
(declare-fun lt!405026 () Unit!30473)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!85 (array!52620 array!52622 (_ BitVec 32) (_ BitVec 32) V!29371 V!29371 (_ BitVec 64)) Unit!30473)

(assert (=> b!897006 (= lt!405026 (lemmaSeekEntryGivesInRangeIndex!85 (_keys!10136 thiss!1181) (_values!5389 thiss!1181) (mask!26058 thiss!1181) (extraKeys!5098 thiss!1181) (zeroValue!5202 thiss!1181) (minValue!5202 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52620 (_ BitVec 32)) SeekEntryResult!8896)

(assert (=> b!897006 (= lt!405025 (seekEntry!0 key!785 (_keys!10136 thiss!1181) (mask!26058 thiss!1181)))))

(declare-fun b!897007 () Bool)

(assert (=> b!897007 (= e!501583 e!501587)))

(declare-fun res!606502 () Bool)

(assert (=> b!897007 (=> res!606502 e!501587)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897007 (= res!606502 (not (validMask!0 (mask!26058 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897007 (arrayContainsKey!0 (_keys!10136 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405027 () Unit!30473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52620 (_ BitVec 64) (_ BitVec 32)) Unit!30473)

(assert (=> b!897007 (= lt!405027 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10136 thiss!1181) key!785 (index!37955 lt!405025)))))

(declare-fun mapIsEmpty!29089 () Bool)

(assert (=> mapIsEmpty!29089 mapRes!29089))

(declare-fun res!606505 () Bool)

(assert (=> start!76610 (=> (not res!606505) (not e!501586))))

(declare-fun valid!1667 (LongMapFixedSize!4358) Bool)

(assert (=> start!76610 (= res!606505 (valid!1667 thiss!1181))))

(assert (=> start!76610 e!501586))

(assert (=> start!76610 e!501579))

(assert (=> start!76610 true))

(declare-fun b!897008 () Bool)

(assert (=> b!897008 (= e!501580 tp_is_empty!18305)))

(declare-fun b!897009 () Bool)

(declare-fun res!606504 () Bool)

(assert (=> b!897009 (=> (not res!606504) (not e!501586))))

(assert (=> b!897009 (= res!606504 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897010 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897010 (= e!501582 (inRange!0 (index!37955 lt!405025) (mask!26058 thiss!1181)))))

(declare-fun b!897011 () Bool)

(declare-fun e!501584 () Bool)

(assert (=> b!897011 (= e!501584 tp_is_empty!18305)))

(declare-fun b!897012 () Bool)

(assert (=> b!897012 (= e!501585 (and e!501584 mapRes!29089))))

(declare-fun condMapEmpty!29089 () Bool)

(declare-fun mapDefault!29089 () ValueCell!8671)

