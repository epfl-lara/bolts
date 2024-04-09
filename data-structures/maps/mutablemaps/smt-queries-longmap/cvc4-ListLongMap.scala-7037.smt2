; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89274 () Bool)

(assert start!89274)

(declare-fun b!1023172 () Bool)

(declare-fun b_free!20279 () Bool)

(declare-fun b_next!20279 () Bool)

(assert (=> b!1023172 (= b_free!20279 (not b_next!20279))))

(declare-fun tp!71873 () Bool)

(declare-fun b_and!32519 () Bool)

(assert (=> b!1023172 (= tp!71873 b_and!32519)))

(declare-fun b!1023167 () Bool)

(declare-fun e!576554 () Bool)

(assert (=> b!1023167 (= e!576554 false)))

(declare-fun lt!450361 () Bool)

(declare-datatypes ((V!36871 0))(
  ( (V!36872 (val!12050 Int)) )
))
(declare-datatypes ((ValueCell!11296 0))(
  ( (ValueCellFull!11296 (v!14620 V!36871)) (EmptyCell!11296) )
))
(declare-datatypes ((array!64026 0))(
  ( (array!64027 (arr!30821 (Array (_ BitVec 32) (_ BitVec 64))) (size!31333 (_ BitVec 32))) )
))
(declare-datatypes ((array!64028 0))(
  ( (array!64029 (arr!30822 (Array (_ BitVec 32) ValueCell!11296)) (size!31334 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5186 0))(
  ( (LongMapFixedSize!5187 (defaultEntry!5945 Int) (mask!29555 (_ BitVec 32)) (extraKeys!5677 (_ BitVec 32)) (zeroValue!5781 V!36871) (minValue!5781 V!36871) (_size!2648 (_ BitVec 32)) (_keys!11087 array!64026) (_values!5968 array!64028) (_vacant!2648 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5186)

(declare-datatypes ((List!21812 0))(
  ( (Nil!21809) (Cons!21808 (h!23006 (_ BitVec 64)) (t!30857 List!21812)) )
))
(declare-fun arrayNoDuplicates!0 (array!64026 (_ BitVec 32) List!21812) Bool)

(assert (=> b!1023167 (= lt!450361 (arrayNoDuplicates!0 (_keys!11087 thiss!1427) #b00000000000000000000000000000000 Nil!21809))))

(declare-fun b!1023168 () Bool)

(declare-fun res!685368 () Bool)

(assert (=> b!1023168 (=> (not res!685368) (not e!576554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64026 (_ BitVec 32)) Bool)

(assert (=> b!1023168 (= res!685368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11087 thiss!1427) (mask!29555 thiss!1427)))))

(declare-fun b!1023169 () Bool)

(declare-fun res!685365 () Bool)

(assert (=> b!1023169 (=> (not res!685365) (not e!576554))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023169 (= res!685365 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023170 () Bool)

(declare-fun e!576556 () Bool)

(declare-fun e!576559 () Bool)

(declare-fun mapRes!37416 () Bool)

(assert (=> b!1023170 (= e!576556 (and e!576559 mapRes!37416))))

(declare-fun condMapEmpty!37416 () Bool)

(declare-fun mapDefault!37416 () ValueCell!11296)

