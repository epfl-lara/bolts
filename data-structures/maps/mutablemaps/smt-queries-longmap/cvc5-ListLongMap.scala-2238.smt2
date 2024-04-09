; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36898 () Bool)

(assert start!36898)

(declare-fun b_free!8017 () Bool)

(declare-fun b_next!8017 () Bool)

(assert (=> start!36898 (= b_free!8017 (not b_next!8017))))

(declare-fun tp!28767 () Bool)

(declare-fun b_and!15277 () Bool)

(assert (=> start!36898 (= tp!28767 b_and!15277)))

(declare-fun res!207160 () Bool)

(declare-fun e!225657 () Bool)

(assert (=> start!36898 (=> (not res!207160) (not e!225657))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36898 (= res!207160 (validMask!0 mask!970))))

(assert (=> start!36898 e!225657))

(declare-datatypes ((V!12659 0))(
  ( (V!12660 (val!4377 Int)) )
))
(declare-datatypes ((ValueCell!3989 0))(
  ( (ValueCellFull!3989 (v!6570 V!12659)) (EmptyCell!3989) )
))
(declare-datatypes ((array!21253 0))(
  ( (array!21254 (arr!10092 (Array (_ BitVec 32) ValueCell!3989)) (size!10444 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21253)

(declare-fun e!225658 () Bool)

(declare-fun array_inv!7458 (array!21253) Bool)

(assert (=> start!36898 (and (array_inv!7458 _values!506) e!225658)))

(assert (=> start!36898 tp!28767))

(assert (=> start!36898 true))

(declare-fun tp_is_empty!8665 () Bool)

(assert (=> start!36898 tp_is_empty!8665))

(declare-datatypes ((array!21255 0))(
  ( (array!21256 (arr!10093 (Array (_ BitVec 32) (_ BitVec 64))) (size!10445 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21255)

(declare-fun array_inv!7459 (array!21255) Bool)

(assert (=> start!36898 (array_inv!7459 _keys!658)))

(declare-fun b!369176 () Bool)

(declare-fun e!225659 () Bool)

(assert (=> b!369176 (= e!225659 tp_is_empty!8665)))

(declare-fun b!369177 () Bool)

(declare-fun res!207162 () Bool)

(assert (=> b!369177 (=> (not res!207162) (not e!225657))))

(declare-datatypes ((List!5658 0))(
  ( (Nil!5655) (Cons!5654 (h!6510 (_ BitVec 64)) (t!10816 List!5658)) )
))
(declare-fun arrayNoDuplicates!0 (array!21255 (_ BitVec 32) List!5658) Bool)

(assert (=> b!369177 (= res!207162 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5655))))

(declare-fun b!369178 () Bool)

(declare-fun res!207164 () Bool)

(assert (=> b!369178 (=> (not res!207164) (not e!225657))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369178 (= res!207164 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!369179 () Bool)

(declare-fun res!207155 () Bool)

(declare-fun e!225656 () Bool)

(assert (=> b!369179 (=> (not res!207155) (not e!225656))))

(declare-fun lt!169684 () array!21255)

(assert (=> b!369179 (= res!207155 (arrayNoDuplicates!0 lt!169684 #b00000000000000000000000000000000 Nil!5655))))

(declare-fun b!369180 () Bool)

(declare-fun e!225655 () Bool)

(assert (=> b!369180 (= e!225655 tp_is_empty!8665)))

(declare-fun mapIsEmpty!14562 () Bool)

(declare-fun mapRes!14562 () Bool)

(assert (=> mapIsEmpty!14562 mapRes!14562))

(declare-fun b!369181 () Bool)

(declare-fun res!207157 () Bool)

(assert (=> b!369181 (=> (not res!207157) (not e!225657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21255 (_ BitVec 32)) Bool)

(assert (=> b!369181 (= res!207157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369182 () Bool)

(assert (=> b!369182 (= e!225657 e!225656)))

(declare-fun res!207158 () Bool)

(assert (=> b!369182 (=> (not res!207158) (not e!225656))))

(assert (=> b!369182 (= res!207158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169684 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369182 (= lt!169684 (array!21256 (store (arr!10093 _keys!658) i!548 k!778) (size!10445 _keys!658)))))

(declare-fun b!369183 () Bool)

(assert (=> b!369183 (= e!225658 (and e!225655 mapRes!14562))))

(declare-fun condMapEmpty!14562 () Bool)

(declare-fun mapDefault!14562 () ValueCell!3989)

