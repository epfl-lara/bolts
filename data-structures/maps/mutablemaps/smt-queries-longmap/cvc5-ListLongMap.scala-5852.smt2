; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75670 () Bool)

(assert start!75670)

(declare-fun b!889137 () Bool)

(declare-fun b_free!15613 () Bool)

(declare-fun b_next!15613 () Bool)

(assert (=> b!889137 (= b_free!15613 (not b_next!15613))))

(declare-fun tp!54809 () Bool)

(declare-fun b_and!25871 () Bool)

(assert (=> b!889137 (= tp!54809 b_and!25871)))

(declare-fun b!889132 () Bool)

(declare-fun res!602711 () Bool)

(declare-fun e!495612 () Bool)

(assert (=> b!889132 (=> (not res!602711) (not e!495612))))

(declare-datatypes ((array!51848 0))(
  ( (array!51849 (arr!24926 (Array (_ BitVec 32) (_ BitVec 64))) (size!25371 (_ BitVec 32))) )
))
(declare-datatypes ((V!28887 0))(
  ( (V!28888 (val!9021 Int)) )
))
(declare-datatypes ((ValueCell!8489 0))(
  ( (ValueCellFull!8489 (v!11493 V!28887)) (EmptyCell!8489) )
))
(declare-datatypes ((array!51850 0))(
  ( (array!51851 (arr!24927 (Array (_ BitVec 32) ValueCell!8489)) (size!25372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3994 0))(
  ( (LongMapFixedSize!3995 (defaultEntry!5194 Int) (mask!25632 (_ BitVec 32)) (extraKeys!4888 (_ BitVec 32)) (zeroValue!4992 V!28887) (minValue!4992 V!28887) (_size!2052 (_ BitVec 32)) (_keys!9873 array!51848) (_values!5179 array!51850) (_vacant!2052 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3994)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51848 (_ BitVec 32)) Bool)

(assert (=> b!889132 (= res!602711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9873 thiss!1181) (mask!25632 thiss!1181)))))

(declare-fun b!889133 () Bool)

(declare-fun e!495614 () Bool)

(declare-fun e!495616 () Bool)

(declare-fun mapRes!28466 () Bool)

(assert (=> b!889133 (= e!495614 (and e!495616 mapRes!28466))))

(declare-fun condMapEmpty!28466 () Bool)

(declare-fun mapDefault!28466 () ValueCell!8489)

