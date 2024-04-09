; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12366 () Bool)

(assert start!12366)

(declare-fun b!105431 () Bool)

(declare-fun b_free!2529 () Bool)

(declare-fun b_next!2529 () Bool)

(assert (=> b!105431 (= b_free!2529 (not b_next!2529))))

(declare-fun tp!9911 () Bool)

(declare-fun b_and!6521 () Bool)

(assert (=> b!105431 (= tp!9911 b_and!6521)))

(declare-fun b!105428 () Bool)

(declare-fun b_free!2531 () Bool)

(declare-fun b_next!2531 () Bool)

(assert (=> b!105428 (= b_free!2531 (not b_next!2531))))

(declare-fun tp!9909 () Bool)

(declare-fun b_and!6523 () Bool)

(assert (=> b!105428 (= tp!9909 b_and!6523)))

(declare-fun b!105422 () Bool)

(declare-fun e!68664 () Bool)

(declare-fun tp_is_empty!2681 () Bool)

(assert (=> b!105422 (= e!68664 tp_is_empty!2681)))

(declare-fun b!105423 () Bool)

(declare-datatypes ((Unit!3254 0))(
  ( (Unit!3255) )
))
(declare-fun e!68668 () Unit!3254)

(declare-fun Unit!3256 () Unit!3254)

(assert (=> b!105423 (= e!68668 Unit!3256)))

(declare-fun b!105424 () Bool)

(declare-fun e!68674 () Bool)

(assert (=> b!105424 (= e!68674 tp_is_empty!2681)))

(declare-fun mapIsEmpty!3935 () Bool)

(declare-fun mapRes!3936 () Bool)

(assert (=> mapIsEmpty!3935 mapRes!3936))

(declare-fun b!105425 () Bool)

(declare-fun res!52480 () Bool)

(declare-fun e!68671 () Bool)

(assert (=> b!105425 (=> (not res!52480) (not e!68671))))

(declare-datatypes ((V!3221 0))(
  ( (V!3222 (val!1385 Int)) )
))
(declare-datatypes ((array!4352 0))(
  ( (array!4353 (arr!2064 (Array (_ BitVec 32) (_ BitVec 64))) (size!2319 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!997 0))(
  ( (ValueCellFull!997 (v!2893 V!3221)) (EmptyCell!997) )
))
(declare-datatypes ((array!4354 0))(
  ( (array!4355 (arr!2065 (Array (_ BitVec 32) ValueCell!997)) (size!2320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!902 0))(
  ( (LongMapFixedSize!903 (defaultEntry!2583 Int) (mask!6729 (_ BitVec 32)) (extraKeys!2388 (_ BitVec 32)) (zeroValue!2458 V!3221) (minValue!2458 V!3221) (_size!500 (_ BitVec 32)) (_keys!4289 array!4352) (_values!2566 array!4354) (_vacant!500 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!902)

(declare-fun valid!410 (LongMapFixedSize!902) Bool)

(assert (=> b!105425 (= res!52480 (valid!410 newMap!16))))

(declare-fun b!105426 () Bool)

(declare-fun e!68676 () Bool)

(assert (=> b!105426 (= e!68676 tp_is_empty!2681)))

(declare-fun b!105427 () Bool)

(declare-fun res!52478 () Bool)

(assert (=> b!105427 (=> (not res!52478) (not e!68671))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!704 0))(
  ( (Cell!705 (v!2894 LongMapFixedSize!902)) )
))
(declare-datatypes ((LongMap!704 0))(
  ( (LongMap!705 (underlying!363 Cell!704)) )
))
(declare-fun thiss!992 () LongMap!704)

(assert (=> b!105427 (= res!52478 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2319 (_keys!4289 (v!2894 (underlying!363 thiss!992)))))))))

(declare-fun e!68659 () Bool)

(declare-fun e!68663 () Bool)

(declare-fun array_inv!1243 (array!4352) Bool)

(declare-fun array_inv!1244 (array!4354) Bool)

(assert (=> b!105428 (= e!68659 (and tp!9909 tp_is_empty!2681 (array_inv!1243 (_keys!4289 newMap!16)) (array_inv!1244 (_values!2566 newMap!16)) e!68663))))

(declare-fun b!105429 () Bool)

(assert (=> b!105429 (= e!68663 (and e!68664 mapRes!3936))))

(declare-fun condMapEmpty!3935 () Bool)

(declare-fun mapDefault!3936 () ValueCell!997)

