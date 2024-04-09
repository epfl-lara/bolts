; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91022 () Bool)

(assert start!91022)

(declare-fun b!1039295 () Bool)

(declare-fun b_free!20975 () Bool)

(declare-fun b_next!20975 () Bool)

(assert (=> b!1039295 (= b_free!20975 (not b_next!20975))))

(declare-fun tp!74102 () Bool)

(declare-fun b_and!33525 () Bool)

(assert (=> b!1039295 (= tp!74102 b_and!33525)))

(declare-fun b!1039288 () Bool)

(declare-fun res!693204 () Bool)

(declare-fun e!588254 () Bool)

(assert (=> b!1039288 (=> res!693204 e!588254)))

(declare-datatypes ((V!37799 0))(
  ( (V!37800 (val!12398 Int)) )
))
(declare-datatypes ((ValueCell!11644 0))(
  ( (ValueCellFull!11644 (v!14986 V!37799)) (EmptyCell!11644) )
))
(declare-datatypes ((array!65498 0))(
  ( (array!65499 (arr!31517 (Array (_ BitVec 32) (_ BitVec 64))) (size!32049 (_ BitVec 32))) )
))
(declare-datatypes ((array!65500 0))(
  ( (array!65501 (arr!31518 (Array (_ BitVec 32) ValueCell!11644)) (size!32050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5882 0))(
  ( (LongMapFixedSize!5883 (defaultEntry!6323 Int) (mask!30280 (_ BitVec 32)) (extraKeys!6051 (_ BitVec 32)) (zeroValue!6157 V!37799) (minValue!6157 V!37799) (_size!2996 (_ BitVec 32)) (_keys!11529 array!65498) (_values!6346 array!65500) (_vacant!2996 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5882)

(declare-datatypes ((SeekEntryResult!9783 0))(
  ( (MissingZero!9783 (index!41502 (_ BitVec 32))) (Found!9783 (index!41503 (_ BitVec 32))) (Intermediate!9783 (undefined!10595 Bool) (index!41504 (_ BitVec 32)) (x!92754 (_ BitVec 32))) (Undefined!9783) (MissingVacant!9783 (index!41505 (_ BitVec 32))) )
))
(declare-fun lt!458046 () SeekEntryResult!9783)

(assert (=> b!1039288 (= res!693204 (or (not (= (size!32049 (_keys!11529 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30280 thiss!1427)))) (bvslt (index!41503 lt!458046) #b00000000000000000000000000000000) (bvsge (index!41503 lt!458046) (size!32049 (_keys!11529 thiss!1427)))))))

(declare-fun b!1039289 () Bool)

(declare-datatypes ((List!22069 0))(
  ( (Nil!22066) (Cons!22065 (h!23269 (_ BitVec 64)) (t!31290 List!22069)) )
))
(declare-fun arrayNoDuplicates!0 (array!65498 (_ BitVec 32) List!22069) Bool)

(assert (=> b!1039289 (= e!588254 (arrayNoDuplicates!0 (_keys!11529 thiss!1427) #b00000000000000000000000000000000 Nil!22066))))

(declare-fun b!1039290 () Bool)

(declare-fun e!588248 () Bool)

(declare-fun e!588253 () Bool)

(declare-fun mapRes!38602 () Bool)

(assert (=> b!1039290 (= e!588248 (and e!588253 mapRes!38602))))

(declare-fun condMapEmpty!38602 () Bool)

(declare-fun mapDefault!38602 () ValueCell!11644)

