; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76582 () Bool)

(assert start!76582)

(declare-fun b!896829 () Bool)

(declare-fun b_free!15967 () Bool)

(declare-fun b_next!15967 () Bool)

(assert (=> b!896829 (= b_free!15967 (not b_next!15967))))

(declare-fun tp!55944 () Bool)

(declare-fun b_and!26277 () Bool)

(assert (=> b!896829 (= tp!55944 b_and!26277)))

(declare-fun b!896825 () Bool)

(declare-fun e!501418 () Bool)

(declare-fun tp_is_empty!18295 () Bool)

(assert (=> b!896825 (= e!501418 tp_is_empty!18295)))

(declare-fun b!896826 () Bool)

(declare-fun e!501421 () Bool)

(declare-datatypes ((array!52598 0))(
  ( (array!52599 (arr!25280 (Array (_ BitVec 32) (_ BitVec 64))) (size!25734 (_ BitVec 32))) )
))
(declare-datatypes ((V!29359 0))(
  ( (V!29360 (val!9198 Int)) )
))
(declare-datatypes ((ValueCell!8666 0))(
  ( (ValueCellFull!8666 (v!11685 V!29359)) (EmptyCell!8666) )
))
(declare-datatypes ((array!52600 0))(
  ( (array!52601 (arr!25281 (Array (_ BitVec 32) ValueCell!8666)) (size!25735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4348 0))(
  ( (LongMapFixedSize!4349 (defaultEntry!5386 Int) (mask!26047 (_ BitVec 32)) (extraKeys!5092 (_ BitVec 32)) (zeroValue!5196 V!29359) (minValue!5196 V!29359) (_size!2229 (_ BitVec 32)) (_keys!10129 array!52598) (_values!5383 array!52600) (_vacant!2229 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4348)

(assert (=> b!896826 (= e!501421 (or (not (= (size!25735 (_values!5383 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26047 thiss!1181)))) (not (= (size!25734 (_keys!10129 thiss!1181)) (size!25735 (_values!5383 thiss!1181)))) (bvsge (mask!26047 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun res!606410 () Bool)

(declare-fun e!501417 () Bool)

(assert (=> start!76582 (=> (not res!606410) (not e!501417))))

(declare-fun valid!1662 (LongMapFixedSize!4348) Bool)

(assert (=> start!76582 (= res!606410 (valid!1662 thiss!1181))))

(assert (=> start!76582 e!501417))

(declare-fun e!501424 () Bool)

(assert (=> start!76582 e!501424))

(assert (=> start!76582 true))

(declare-fun b!896827 () Bool)

(declare-fun res!606409 () Bool)

(assert (=> b!896827 (=> (not res!606409) (not e!501417))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!896827 (= res!606409 (not (= key!785 (bvneg key!785))))))

(declare-fun b!896828 () Bool)

(declare-fun e!501423 () Bool)

(assert (=> b!896828 (= e!501423 tp_is_empty!18295)))

(declare-fun e!501422 () Bool)

(declare-fun array_inv!19816 (array!52598) Bool)

(declare-fun array_inv!19817 (array!52600) Bool)

(assert (=> b!896829 (= e!501424 (and tp!55944 tp_is_empty!18295 (array_inv!19816 (_keys!10129 thiss!1181)) (array_inv!19817 (_values!5383 thiss!1181)) e!501422))))

(declare-fun b!896830 () Bool)

(declare-fun mapRes!29071 () Bool)

(assert (=> b!896830 (= e!501422 (and e!501423 mapRes!29071))))

(declare-fun condMapEmpty!29071 () Bool)

(declare-fun mapDefault!29071 () ValueCell!8666)

