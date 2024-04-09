; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38638 () Bool)

(assert start!38638)

(declare-fun b_free!9167 () Bool)

(declare-fun b_next!9167 () Bool)

(assert (=> start!38638 (= b_free!9167 (not b_next!9167))))

(declare-fun tp!32624 () Bool)

(declare-fun b_and!16571 () Bool)

(assert (=> start!38638 (= tp!32624 b_and!16571)))

(declare-fun e!241651 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((V!14503 0))(
  ( (V!14504 (val!5069 Int)) )
))
(declare-datatypes ((tuple2!6658 0))(
  ( (tuple2!6659 (_1!3339 (_ BitVec 64)) (_2!3339 V!14503)) )
))
(declare-datatypes ((List!6610 0))(
  ( (Nil!6607) (Cons!6606 (h!7462 tuple2!6658) (t!11792 List!6610)) )
))
(declare-datatypes ((ListLongMap!5585 0))(
  ( (ListLongMap!5586 (toList!2808 List!6610)) )
))
(declare-fun call!28162 () ListLongMap!5585)

(declare-fun b!400522 () Bool)

(declare-fun call!28163 () ListLongMap!5585)

(declare-fun v!412 () V!14503)

(declare-fun +!1095 (ListLongMap!5585 tuple2!6658) ListLongMap!5585)

(assert (=> b!400522 (= e!241651 (= call!28163 (+!1095 call!28162 (tuple2!6659 k!794 v!412))))))

(declare-fun mapNonEmpty!16695 () Bool)

(declare-fun mapRes!16695 () Bool)

(declare-fun tp!32625 () Bool)

(declare-fun e!241649 () Bool)

(assert (=> mapNonEmpty!16695 (= mapRes!16695 (and tp!32625 e!241649))))

(declare-fun mapKey!16695 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4681 0))(
  ( (ValueCellFull!4681 (v!7312 V!14503)) (EmptyCell!4681) )
))
(declare-datatypes ((array!23975 0))(
  ( (array!23976 (arr!11434 (Array (_ BitVec 32) ValueCell!4681)) (size!11786 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23975)

(declare-fun mapValue!16695 () ValueCell!4681)

(declare-fun mapRest!16695 () (Array (_ BitVec 32) ValueCell!4681))

(assert (=> mapNonEmpty!16695 (= (arr!11434 _values!549) (store mapRest!16695 mapKey!16695 mapValue!16695))))

(declare-fun b!400523 () Bool)

(declare-fun res!230543 () Bool)

(declare-fun e!241652 () Bool)

(assert (=> b!400523 (=> (not res!230543) (not e!241652))))

(declare-datatypes ((array!23977 0))(
  ( (array!23978 (arr!11435 (Array (_ BitVec 32) (_ BitVec 64))) (size!11787 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23977)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400523 (= res!230543 (or (= (select (arr!11435 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11435 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400524 () Bool)

(declare-fun e!241648 () Bool)

(declare-fun tp_is_empty!10049 () Bool)

(assert (=> b!400524 (= e!241648 tp_is_empty!10049)))

(declare-fun b!400525 () Bool)

(declare-fun e!241653 () Bool)

(assert (=> b!400525 (= e!241653 (and e!241648 mapRes!16695))))

(declare-fun condMapEmpty!16695 () Bool)

(declare-fun mapDefault!16695 () ValueCell!4681)

