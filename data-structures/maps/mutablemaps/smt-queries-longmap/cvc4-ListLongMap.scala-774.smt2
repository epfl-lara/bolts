; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18288 () Bool)

(assert start!18288)

(declare-fun b!181578 () Bool)

(declare-fun b_free!4487 () Bool)

(declare-fun b_next!4487 () Bool)

(assert (=> b!181578 (= b_free!4487 (not b_next!4487))))

(declare-fun tp!16211 () Bool)

(declare-fun b_and!11055 () Bool)

(assert (=> b!181578 (= tp!16211 b_and!11055)))

(declare-fun e!119609 () Bool)

(declare-fun e!119610 () Bool)

(declare-fun tp_is_empty!4259 () Bool)

(declare-datatypes ((V!5325 0))(
  ( (V!5326 (val!2174 Int)) )
))
(declare-datatypes ((ValueCell!1786 0))(
  ( (ValueCellFull!1786 (v!4067 V!5325)) (EmptyCell!1786) )
))
(declare-datatypes ((array!7698 0))(
  ( (array!7699 (arr!3642 (Array (_ BitVec 32) (_ BitVec 64))) (size!3952 (_ BitVec 32))) )
))
(declare-datatypes ((array!7700 0))(
  ( (array!7701 (arr!3643 (Array (_ BitVec 32) ValueCell!1786)) (size!3953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2480 0))(
  ( (LongMapFixedSize!2481 (defaultEntry!3722 Int) (mask!8747 (_ BitVec 32)) (extraKeys!3459 (_ BitVec 32)) (zeroValue!3563 V!5325) (minValue!3563 V!5325) (_size!1289 (_ BitVec 32)) (_keys!5625 array!7698) (_values!3705 array!7700) (_vacant!1289 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2480)

(declare-fun array_inv!2337 (array!7698) Bool)

(declare-fun array_inv!2338 (array!7700) Bool)

(assert (=> b!181578 (= e!119610 (and tp!16211 tp_is_empty!4259 (array_inv!2337 (_keys!5625 thiss!1248)) (array_inv!2338 (_values!3705 thiss!1248)) e!119609))))

(declare-fun mapIsEmpty!7302 () Bool)

(declare-fun mapRes!7302 () Bool)

(assert (=> mapIsEmpty!7302 mapRes!7302))

(declare-fun b!181579 () Bool)

(declare-fun res!85982 () Bool)

(declare-fun e!119607 () Bool)

(assert (=> b!181579 (=> (not res!85982) (not e!119607))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3388 0))(
  ( (tuple2!3389 (_1!1704 (_ BitVec 64)) (_2!1704 V!5325)) )
))
(declare-datatypes ((List!2331 0))(
  ( (Nil!2328) (Cons!2327 (h!2954 tuple2!3388) (t!7195 List!2331)) )
))
(declare-datatypes ((ListLongMap!2319 0))(
  ( (ListLongMap!2320 (toList!1175 List!2331)) )
))
(declare-fun contains!1249 (ListLongMap!2319 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!818 (array!7698 array!7700 (_ BitVec 32) (_ BitVec 32) V!5325 V!5325 (_ BitVec 32) Int) ListLongMap!2319)

(assert (=> b!181579 (= res!85982 (contains!1249 (getCurrentListMap!818 (_keys!5625 thiss!1248) (_values!3705 thiss!1248) (mask!8747 thiss!1248) (extraKeys!3459 thiss!1248) (zeroValue!3563 thiss!1248) (minValue!3563 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3722 thiss!1248)) key!828))))

(declare-fun res!85979 () Bool)

(declare-fun e!119613 () Bool)

(assert (=> start!18288 (=> (not res!85979) (not e!119613))))

(declare-fun valid!1020 (LongMapFixedSize!2480) Bool)

(assert (=> start!18288 (= res!85979 (valid!1020 thiss!1248))))

(assert (=> start!18288 e!119613))

(assert (=> start!18288 e!119610))

(assert (=> start!18288 true))

(declare-fun b!181580 () Bool)

(declare-fun e!119611 () Bool)

(assert (=> b!181580 (= e!119611 tp_is_empty!4259)))

(declare-fun b!181581 () Bool)

(declare-fun res!85980 () Bool)

(assert (=> b!181581 (=> (not res!85980) (not e!119607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181581 (= res!85980 (validMask!0 (mask!8747 thiss!1248)))))

(declare-fun b!181582 () Bool)

(declare-fun e!119608 () Bool)

(assert (=> b!181582 (= e!119608 tp_is_empty!4259)))

(declare-fun b!181583 () Bool)

(assert (=> b!181583 (= e!119609 (and e!119611 mapRes!7302))))

(declare-fun condMapEmpty!7302 () Bool)

(declare-fun mapDefault!7302 () ValueCell!1786)

