; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38584 () Bool)

(assert start!38584)

(declare-fun b_free!9113 () Bool)

(declare-fun b_next!9113 () Bool)

(assert (=> start!38584 (= b_free!9113 (not b_next!9113))))

(declare-fun tp!32462 () Bool)

(declare-fun b_and!16517 () Bool)

(assert (=> start!38584 (= tp!32462 b_and!16517)))

(declare-fun b!399145 () Bool)

(declare-fun res!229569 () Bool)

(declare-fun e!241081 () Bool)

(assert (=> b!399145 (=> (not res!229569) (not e!241081))))

(declare-datatypes ((array!23869 0))(
  ( (array!23870 (arr!11381 (Array (_ BitVec 32) (_ BitVec 64))) (size!11733 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23869)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14431 0))(
  ( (V!14432 (val!5042 Int)) )
))
(declare-datatypes ((ValueCell!4654 0))(
  ( (ValueCellFull!4654 (v!7285 V!14431)) (EmptyCell!4654) )
))
(declare-datatypes ((array!23871 0))(
  ( (array!23872 (arr!11382 (Array (_ BitVec 32) ValueCell!4654)) (size!11734 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23871)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!399145 (= res!229569 (and (= (size!11734 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11733 _keys!709) (size!11734 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399146 () Bool)

(declare-fun res!229564 () Bool)

(assert (=> b!399146 (=> (not res!229564) (not e!241081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23869 (_ BitVec 32)) Bool)

(assert (=> b!399146 (= res!229564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399147 () Bool)

(declare-fun res!229561 () Bool)

(assert (=> b!399147 (=> (not res!229561) (not e!241081))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399147 (= res!229561 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!399148 () Bool)

(declare-fun e!241083 () Bool)

(declare-datatypes ((tuple2!6608 0))(
  ( (tuple2!6609 (_1!3314 (_ BitVec 64)) (_2!3314 V!14431)) )
))
(declare-datatypes ((List!6563 0))(
  ( (Nil!6560) (Cons!6559 (h!7415 tuple2!6608) (t!11745 List!6563)) )
))
(declare-datatypes ((ListLongMap!5535 0))(
  ( (ListLongMap!5536 (toList!2783 List!6563)) )
))
(declare-fun call!28000 () ListLongMap!5535)

(declare-fun call!28001 () ListLongMap!5535)

(assert (=> b!399148 (= e!241083 (= call!28000 call!28001))))

(declare-fun b!399149 () Bool)

(declare-fun e!241087 () Bool)

(declare-fun tp_is_empty!9995 () Bool)

(assert (=> b!399149 (= e!241087 tp_is_empty!9995)))

(declare-fun b!399150 () Bool)

(declare-fun res!229568 () Bool)

(assert (=> b!399150 (=> (not res!229568) (not e!241081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399150 (= res!229568 (validMask!0 mask!1025))))

(declare-fun res!229565 () Bool)

(assert (=> start!38584 (=> (not res!229565) (not e!241081))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38584 (= res!229565 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11733 _keys!709))))))

(assert (=> start!38584 e!241081))

(assert (=> start!38584 tp_is_empty!9995))

(assert (=> start!38584 tp!32462))

(assert (=> start!38584 true))

(declare-fun e!241084 () Bool)

(declare-fun array_inv!8330 (array!23871) Bool)

(assert (=> start!38584 (and (array_inv!8330 _values!549) e!241084)))

(declare-fun array_inv!8331 (array!23869) Bool)

(assert (=> start!38584 (array_inv!8331 _keys!709)))

(declare-fun b!399151 () Bool)

(declare-fun mapRes!16614 () Bool)

(assert (=> b!399151 (= e!241084 (and e!241087 mapRes!16614))))

(declare-fun condMapEmpty!16614 () Bool)

(declare-fun mapDefault!16614 () ValueCell!4654)

