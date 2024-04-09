; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12052 () Bool)

(assert start!12052)

(declare-fun b!101512 () Bool)

(declare-fun b_free!2461 () Bool)

(declare-fun b_next!2461 () Bool)

(assert (=> b!101512 (= b_free!2461 (not b_next!2461))))

(declare-fun tp!9689 () Bool)

(declare-fun b_and!6253 () Bool)

(assert (=> b!101512 (= tp!9689 b_and!6253)))

(declare-fun b!101504 () Bool)

(declare-fun b_free!2463 () Bool)

(declare-fun b_next!2463 () Bool)

(assert (=> b!101504 (= b_free!2463 (not b_next!2463))))

(declare-fun tp!9687 () Bool)

(declare-fun b_and!6255 () Bool)

(assert (=> b!101504 (= tp!9687 b_and!6255)))

(declare-fun b!101503 () Bool)

(declare-fun e!66083 () Bool)

(declare-fun e!66086 () Bool)

(declare-fun mapRes!3816 () Bool)

(assert (=> b!101503 (= e!66083 (and e!66086 mapRes!3816))))

(declare-fun condMapEmpty!3815 () Bool)

(declare-datatypes ((V!3177 0))(
  ( (V!3178 (val!1368 Int)) )
))
(declare-datatypes ((array!4278 0))(
  ( (array!4279 (arr!2030 (Array (_ BitVec 32) (_ BitVec 64))) (size!2283 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!980 0))(
  ( (ValueCellFull!980 (v!2842 V!3177)) (EmptyCell!980) )
))
(declare-datatypes ((array!4280 0))(
  ( (array!4281 (arr!2031 (Array (_ BitVec 32) ValueCell!980)) (size!2284 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!868 0))(
  ( (LongMapFixedSize!869 (defaultEntry!2535 Int) (mask!6658 (_ BitVec 32)) (extraKeys!2346 (_ BitVec 32)) (zeroValue!2413 V!3177) (minValue!2413 V!3177) (_size!483 (_ BitVec 32)) (_keys!4235 array!4278) (_values!2518 array!4280) (_vacant!483 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!672 0))(
  ( (Cell!673 (v!2843 LongMapFixedSize!868)) )
))
(declare-datatypes ((LongMap!672 0))(
  ( (LongMap!673 (underlying!347 Cell!672)) )
))
(declare-fun thiss!992 () LongMap!672)

(declare-fun mapDefault!3816 () ValueCell!980)

