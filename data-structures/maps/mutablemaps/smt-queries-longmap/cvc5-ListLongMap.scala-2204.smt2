; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36634 () Bool)

(assert start!36634)

(declare-fun res!204346 () Bool)

(declare-fun e!223754 () Bool)

(assert (=> start!36634 (=> (not res!204346) (not e!223754))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36634 (= res!204346 (validMask!0 mask!970))))

(assert (=> start!36634 e!223754))

(assert (=> start!36634 true))

(declare-datatypes ((V!12387 0))(
  ( (V!12388 (val!4275 Int)) )
))
(declare-datatypes ((ValueCell!3887 0))(
  ( (ValueCellFull!3887 (v!6467 V!12387)) (EmptyCell!3887) )
))
(declare-datatypes ((array!20853 0))(
  ( (array!20854 (arr!9896 (Array (_ BitVec 32) ValueCell!3887)) (size!10248 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20853)

(declare-fun e!223755 () Bool)

(declare-fun array_inv!7320 (array!20853) Bool)

(assert (=> start!36634 (and (array_inv!7320 _values!506) e!223755)))

(declare-datatypes ((array!20855 0))(
  ( (array!20856 (arr!9897 (Array (_ BitVec 32) (_ BitVec 64))) (size!10249 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20855)

(declare-fun array_inv!7321 (array!20855) Bool)

(assert (=> start!36634 (array_inv!7321 _keys!658)))

(declare-fun b!365363 () Bool)

(assert (=> b!365363 (= e!223754 false)))

(declare-fun lt!169152 () Bool)

(declare-datatypes ((List!5550 0))(
  ( (Nil!5547) (Cons!5546 (h!6402 (_ BitVec 64)) (t!10708 List!5550)) )
))
(declare-fun arrayNoDuplicates!0 (array!20855 (_ BitVec 32) List!5550) Bool)

(assert (=> b!365363 (= lt!169152 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5547))))

(declare-fun b!365364 () Bool)

(declare-fun e!223756 () Bool)

(declare-fun mapRes!14244 () Bool)

(assert (=> b!365364 (= e!223755 (and e!223756 mapRes!14244))))

(declare-fun condMapEmpty!14244 () Bool)

(declare-fun mapDefault!14244 () ValueCell!3887)

