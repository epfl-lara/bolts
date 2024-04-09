; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89286 () Bool)

(assert start!89286)

(declare-fun b!1023333 () Bool)

(declare-fun b_free!20291 () Bool)

(declare-fun b_next!20291 () Bool)

(assert (=> b!1023333 (= b_free!20291 (not b_next!20291))))

(declare-fun tp!71908 () Bool)

(declare-fun b_and!32531 () Bool)

(assert (=> b!1023333 (= tp!71908 b_and!32531)))

(declare-fun b!1023329 () Bool)

(declare-fun res!685456 () Bool)

(declare-fun e!576667 () Bool)

(assert (=> b!1023329 (=> (not res!685456) (not e!576667))))

(declare-datatypes ((V!36887 0))(
  ( (V!36888 (val!12056 Int)) )
))
(declare-datatypes ((ValueCell!11302 0))(
  ( (ValueCellFull!11302 (v!14626 V!36887)) (EmptyCell!11302) )
))
(declare-datatypes ((array!64050 0))(
  ( (array!64051 (arr!30833 (Array (_ BitVec 32) (_ BitVec 64))) (size!31345 (_ BitVec 32))) )
))
(declare-datatypes ((array!64052 0))(
  ( (array!64053 (arr!30834 (Array (_ BitVec 32) ValueCell!11302)) (size!31346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5198 0))(
  ( (LongMapFixedSize!5199 (defaultEntry!5951 Int) (mask!29565 (_ BitVec 32)) (extraKeys!5683 (_ BitVec 32)) (zeroValue!5787 V!36887) (minValue!5787 V!36887) (_size!2654 (_ BitVec 32)) (_keys!11093 array!64050) (_values!5974 array!64052) (_vacant!2654 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5198)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023329 (= res!685456 (validMask!0 (mask!29565 thiss!1427)))))

(declare-fun b!1023330 () Bool)

(declare-fun e!576665 () Bool)

(declare-fun tp_is_empty!24011 () Bool)

(assert (=> b!1023330 (= e!576665 tp_is_empty!24011)))

(declare-fun res!685455 () Bool)

(assert (=> start!89286 (=> (not res!685455) (not e!576667))))

(declare-fun valid!1938 (LongMapFixedSize!5198) Bool)

(assert (=> start!89286 (= res!685455 (valid!1938 thiss!1427))))

(assert (=> start!89286 e!576667))

(declare-fun e!576666 () Bool)

(assert (=> start!89286 e!576666))

(assert (=> start!89286 true))

(declare-fun b!1023331 () Bool)

(declare-fun res!685454 () Bool)

(assert (=> b!1023331 (=> (not res!685454) (not e!576667))))

(assert (=> b!1023331 (= res!685454 (and (= (size!31346 (_values!5974 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29565 thiss!1427))) (= (size!31345 (_keys!11093 thiss!1427)) (size!31346 (_values!5974 thiss!1427))) (bvsge (mask!29565 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5683 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5683 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5683 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5683 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5683 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5683 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5683 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023332 () Bool)

(declare-fun e!576664 () Bool)

(assert (=> b!1023332 (= e!576664 tp_is_empty!24011)))

(declare-fun e!576663 () Bool)

(declare-fun array_inv!23761 (array!64050) Bool)

(declare-fun array_inv!23762 (array!64052) Bool)

(assert (=> b!1023333 (= e!576666 (and tp!71908 tp_is_empty!24011 (array_inv!23761 (_keys!11093 thiss!1427)) (array_inv!23762 (_values!5974 thiss!1427)) e!576663))))

(declare-fun b!1023334 () Bool)

(declare-fun res!685457 () Bool)

(assert (=> b!1023334 (=> (not res!685457) (not e!576667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64050 (_ BitVec 32)) Bool)

(assert (=> b!1023334 (= res!685457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11093 thiss!1427) (mask!29565 thiss!1427)))))

(declare-fun b!1023335 () Bool)

(declare-fun mapRes!37434 () Bool)

(assert (=> b!1023335 (= e!576663 (and e!576665 mapRes!37434))))

(declare-fun condMapEmpty!37434 () Bool)

(declare-fun mapDefault!37434 () ValueCell!11302)

