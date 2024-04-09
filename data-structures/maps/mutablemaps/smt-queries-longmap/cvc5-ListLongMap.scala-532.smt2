; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13258 () Bool)

(assert start!13258)

(declare-fun b!117005 () Bool)

(declare-fun b_free!2773 () Bool)

(declare-fun b_next!2773 () Bool)

(assert (=> b!117005 (= b_free!2773 (not b_next!2773))))

(declare-fun tp!10697 () Bool)

(declare-fun b_and!7305 () Bool)

(assert (=> b!117005 (= tp!10697 b_and!7305)))

(declare-fun b!117018 () Bool)

(declare-fun b_free!2775 () Bool)

(declare-fun b_next!2775 () Bool)

(assert (=> b!117018 (= b_free!2775 (not b_next!2775))))

(declare-fun tp!10696 () Bool)

(declare-fun b_and!7307 () Bool)

(assert (=> b!117018 (= tp!10696 b_and!7307)))

(declare-fun b!117002 () Bool)

(declare-fun res!57264 () Bool)

(declare-fun e!76461 () Bool)

(assert (=> b!117002 (=> (not res!57264) (not e!76461))))

(declare-datatypes ((V!3385 0))(
  ( (V!3386 (val!1446 Int)) )
))
(declare-datatypes ((array!4614 0))(
  ( (array!4615 (arr!2186 (Array (_ BitVec 32) (_ BitVec 64))) (size!2447 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1058 0))(
  ( (ValueCellFull!1058 (v!3057 V!3385)) (EmptyCell!1058) )
))
(declare-datatypes ((array!4616 0))(
  ( (array!4617 (arr!2187 (Array (_ BitVec 32) ValueCell!1058)) (size!2448 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1024 0))(
  ( (LongMapFixedSize!1025 (defaultEntry!2725 Int) (mask!6947 (_ BitVec 32)) (extraKeys!2514 (_ BitVec 32)) (zeroValue!2592 V!3385) (minValue!2592 V!3385) (_size!561 (_ BitVec 32)) (_keys!4448 array!4614) (_values!2708 array!4616) (_vacant!561 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1024)

(declare-fun valid!479 (LongMapFixedSize!1024) Bool)

(assert (=> b!117002 (= res!57264 (valid!479 newMap!16))))

(declare-fun b!117003 () Bool)

(declare-fun e!76457 () Bool)

(declare-fun e!76468 () Bool)

(assert (=> b!117003 (= e!76457 e!76468)))

(declare-fun b!117004 () Bool)

(declare-fun e!76465 () Bool)

(declare-fun tp_is_empty!2803 () Bool)

(assert (=> b!117004 (= e!76465 tp_is_empty!2803)))

(declare-datatypes ((Cell!816 0))(
  ( (Cell!817 (v!3058 LongMapFixedSize!1024)) )
))
(declare-datatypes ((LongMap!816 0))(
  ( (LongMap!817 (underlying!419 Cell!816)) )
))
(declare-fun thiss!992 () LongMap!816)

(declare-fun e!76464 () Bool)

(declare-fun array_inv!1331 (array!4614) Bool)

(declare-fun array_inv!1332 (array!4616) Bool)

(assert (=> b!117005 (= e!76468 (and tp!10697 tp_is_empty!2803 (array_inv!1331 (_keys!4448 (v!3058 (underlying!419 thiss!992)))) (array_inv!1332 (_values!2708 (v!3058 (underlying!419 thiss!992)))) e!76464))))

(declare-fun res!57258 () Bool)

(assert (=> start!13258 (=> (not res!57258) (not e!76461))))

(declare-fun valid!480 (LongMap!816) Bool)

(assert (=> start!13258 (= res!57258 (valid!480 thiss!992))))

(assert (=> start!13258 e!76461))

(declare-fun e!76471 () Bool)

(assert (=> start!13258 e!76471))

(assert (=> start!13258 true))

(declare-fun e!76456 () Bool)

(assert (=> start!13258 e!76456))

(declare-fun b!117006 () Bool)

(declare-fun res!57260 () Bool)

(assert (=> b!117006 (=> (not res!57260) (not e!76461))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!117006 (= res!57260 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2447 (_keys!4448 (v!3058 (underlying!419 thiss!992)))))))))

(declare-fun b!117007 () Bool)

(declare-fun e!76466 () Bool)

(declare-fun mapRes!4355 () Bool)

(assert (=> b!117007 (= e!76464 (and e!76466 mapRes!4355))))

(declare-fun condMapEmpty!4355 () Bool)

(declare-fun mapDefault!4356 () ValueCell!1058)

