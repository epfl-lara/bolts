; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18264 () Bool)

(assert start!18264)

(declare-fun b!181340 () Bool)

(declare-fun b_free!4477 () Bool)

(declare-fun b_next!4477 () Bool)

(assert (=> b!181340 (= b_free!4477 (not b_next!4477))))

(declare-fun tp!16179 () Bool)

(declare-fun b_and!11043 () Bool)

(assert (=> b!181340 (= tp!16179 b_and!11043)))

(declare-fun b!181334 () Bool)

(declare-fun e!119445 () Bool)

(declare-fun tp_is_empty!4249 () Bool)

(assert (=> b!181334 (= e!119445 tp_is_empty!4249)))

(declare-fun b!181335 () Bool)

(declare-fun res!85867 () Bool)

(declare-fun e!119442 () Bool)

(assert (=> b!181335 (=> (not res!85867) (not e!119442))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!181335 (= res!85867 (not (= key!828 (bvneg key!828))))))

(declare-fun b!181336 () Bool)

(declare-fun res!85864 () Bool)

(declare-fun e!119444 () Bool)

(assert (=> b!181336 (=> (not res!85864) (not e!119444))))

(declare-datatypes ((V!5313 0))(
  ( (V!5314 (val!2169 Int)) )
))
(declare-datatypes ((ValueCell!1781 0))(
  ( (ValueCellFull!1781 (v!4061 V!5313)) (EmptyCell!1781) )
))
(declare-datatypes ((array!7676 0))(
  ( (array!7677 (arr!3632 (Array (_ BitVec 32) (_ BitVec 64))) (size!3942 (_ BitVec 32))) )
))
(declare-datatypes ((array!7678 0))(
  ( (array!7679 (arr!3633 (Array (_ BitVec 32) ValueCell!1781)) (size!3943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2470 0))(
  ( (LongMapFixedSize!2471 (defaultEntry!3716 Int) (mask!8737 (_ BitVec 32)) (extraKeys!3453 (_ BitVec 32)) (zeroValue!3557 V!5313) (minValue!3557 V!5313) (_size!1284 (_ BitVec 32)) (_keys!5618 array!7676) (_values!3699 array!7678) (_vacant!1284 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2470)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181336 (= res!85864 (validMask!0 (mask!8737 thiss!1248)))))

(declare-fun b!181337 () Bool)

(assert (=> b!181337 (= e!119444 (and (= (size!3943 (_values!3699 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8737 thiss!1248))) (= (size!3942 (_keys!5618 thiss!1248)) (size!3943 (_values!3699 thiss!1248))) (bvslt (mask!8737 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!181338 () Bool)

(declare-fun e!119439 () Bool)

(declare-fun mapRes!7284 () Bool)

(assert (=> b!181338 (= e!119439 (and e!119445 mapRes!7284))))

(declare-fun condMapEmpty!7284 () Bool)

(declare-fun mapDefault!7284 () ValueCell!1781)

