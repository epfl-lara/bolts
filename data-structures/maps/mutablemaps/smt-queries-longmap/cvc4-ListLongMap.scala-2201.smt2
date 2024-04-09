; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36590 () Bool)

(assert start!36590)

(declare-fun res!204210 () Bool)

(declare-fun e!223577 () Bool)

(assert (=> start!36590 (=> (not res!204210) (not e!223577))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36590 (= res!204210 (validMask!0 mask!970))))

(assert (=> start!36590 e!223577))

(assert (=> start!36590 true))

(declare-datatypes ((V!12367 0))(
  ( (V!12368 (val!4268 Int)) )
))
(declare-datatypes ((ValueCell!3880 0))(
  ( (ValueCellFull!3880 (v!6459 V!12367)) (EmptyCell!3880) )
))
(declare-datatypes ((array!20821 0))(
  ( (array!20822 (arr!9883 (Array (_ BitVec 32) ValueCell!3880)) (size!10235 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20821)

(declare-fun e!223574 () Bool)

(declare-fun array_inv!7312 (array!20821) Bool)

(assert (=> start!36590 (and (array_inv!7312 _values!506) e!223574)))

(declare-datatypes ((array!20823 0))(
  ( (array!20824 (arr!9884 (Array (_ BitVec 32) (_ BitVec 64))) (size!10236 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20823)

(declare-fun array_inv!7313 (array!20823) Bool)

(assert (=> start!36590 (array_inv!7313 _keys!658)))

(declare-fun b!365121 () Bool)

(declare-fun res!204209 () Bool)

(assert (=> b!365121 (=> (not res!204209) (not e!223577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20823 (_ BitVec 32)) Bool)

(assert (=> b!365121 (= res!204209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365122 () Bool)

(declare-fun e!223573 () Bool)

(declare-fun mapRes!14214 () Bool)

(assert (=> b!365122 (= e!223574 (and e!223573 mapRes!14214))))

(declare-fun condMapEmpty!14214 () Bool)

(declare-fun mapDefault!14214 () ValueCell!3880)

