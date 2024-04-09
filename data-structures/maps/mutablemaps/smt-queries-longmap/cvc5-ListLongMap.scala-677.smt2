; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16578 () Bool)

(assert start!16578)

(declare-fun b!164974 () Bool)

(declare-fun b_free!3871 () Bool)

(declare-fun b_next!3871 () Bool)

(assert (=> b!164974 (= b_free!3871 (not b_next!3871))))

(declare-fun tp!14214 () Bool)

(declare-fun b_and!10303 () Bool)

(assert (=> b!164974 (= tp!14214 b_and!10303)))

(declare-fun b!164964 () Bool)

(declare-fun e!108234 () Bool)

(declare-fun tp_is_empty!3673 () Bool)

(assert (=> b!164964 (= e!108234 tp_is_empty!3673)))

(declare-fun res!78215 () Bool)

(declare-fun e!108232 () Bool)

(assert (=> start!16578 (=> (not res!78215) (not e!108232))))

(declare-datatypes ((V!4545 0))(
  ( (V!4546 (val!1881 Int)) )
))
(declare-datatypes ((ValueCell!1493 0))(
  ( (ValueCellFull!1493 (v!3742 V!4545)) (EmptyCell!1493) )
))
(declare-datatypes ((array!6442 0))(
  ( (array!6443 (arr!3056 (Array (_ BitVec 32) (_ BitVec 64))) (size!3344 (_ BitVec 32))) )
))
(declare-datatypes ((array!6444 0))(
  ( (array!6445 (arr!3057 (Array (_ BitVec 32) ValueCell!1493)) (size!3345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1894 0))(
  ( (LongMapFixedSize!1895 (defaultEntry!3389 Int) (mask!8092 (_ BitVec 32)) (extraKeys!3130 (_ BitVec 32)) (zeroValue!3232 V!4545) (minValue!3232 V!4545) (_size!996 (_ BitVec 32)) (_keys!5214 array!6442) (_values!3372 array!6444) (_vacant!996 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1894)

(declare-fun valid!832 (LongMapFixedSize!1894) Bool)

(assert (=> start!16578 (= res!78215 (valid!832 thiss!1248))))

(assert (=> start!16578 e!108232))

(declare-fun e!108231 () Bool)

(assert (=> start!16578 e!108231))

(assert (=> start!16578 true))

(declare-fun b!164965 () Bool)

(declare-fun e!108233 () Bool)

(assert (=> b!164965 (= e!108233 false)))

(declare-fun lt!83015 () Bool)

(declare-datatypes ((List!2053 0))(
  ( (Nil!2050) (Cons!2049 (h!2666 (_ BitVec 64)) (t!6863 List!2053)) )
))
(declare-fun arrayNoDuplicates!0 (array!6442 (_ BitVec 32) List!2053) Bool)

(assert (=> b!164965 (= lt!83015 (arrayNoDuplicates!0 (_keys!5214 thiss!1248) #b00000000000000000000000000000000 Nil!2050))))

(declare-fun b!164966 () Bool)

(declare-fun e!108229 () Bool)

(assert (=> b!164966 (= e!108229 tp_is_empty!3673)))

(declare-fun b!164967 () Bool)

(declare-fun e!108235 () Bool)

(declare-fun mapRes!6228 () Bool)

(assert (=> b!164967 (= e!108235 (and e!108234 mapRes!6228))))

(declare-fun condMapEmpty!6228 () Bool)

(declare-fun mapDefault!6228 () ValueCell!1493)

