; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36604 () Bool)

(assert start!36604)

(declare-fun mapNonEmpty!14226 () Bool)

(declare-fun mapRes!14226 () Bool)

(declare-fun tp!28302 () Bool)

(declare-fun e!223633 () Bool)

(assert (=> mapNonEmpty!14226 (= mapRes!14226 (and tp!28302 e!223633))))

(declare-datatypes ((V!12375 0))(
  ( (V!12376 (val!4271 Int)) )
))
(declare-datatypes ((ValueCell!3883 0))(
  ( (ValueCellFull!3883 (v!6462 V!12375)) (EmptyCell!3883) )
))
(declare-datatypes ((array!20835 0))(
  ( (array!20836 (arr!9889 (Array (_ BitVec 32) ValueCell!3883)) (size!10241 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20835)

(declare-fun mapRest!14226 () (Array (_ BitVec 32) ValueCell!3883))

(declare-fun mapKey!14226 () (_ BitVec 32))

(declare-fun mapValue!14226 () ValueCell!3883)

(assert (=> mapNonEmpty!14226 (= (arr!9889 _values!506) (store mapRest!14226 mapKey!14226 mapValue!14226))))

(declare-fun b!365203 () Bool)

(declare-fun res!204252 () Bool)

(declare-fun e!223635 () Bool)

(assert (=> b!365203 (=> (not res!204252) (not e!223635))))

(declare-datatypes ((array!20837 0))(
  ( (array!20838 (arr!9890 (Array (_ BitVec 32) (_ BitVec 64))) (size!10242 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20837)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20837 (_ BitVec 32)) Bool)

(assert (=> b!365203 (= res!204252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365204 () Bool)

(declare-fun tp_is_empty!8453 () Bool)

(assert (=> b!365204 (= e!223633 tp_is_empty!8453)))

(declare-fun b!365205 () Bool)

(declare-fun res!204253 () Bool)

(assert (=> b!365205 (=> (not res!204253) (not e!223635))))

(assert (=> b!365205 (= res!204253 (and (bvsle #b00000000000000000000000000000000 (size!10242 _keys!658)) (bvslt (size!10242 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!365206 () Bool)

(declare-fun e!223637 () Bool)

(declare-fun e!223636 () Bool)

(assert (=> b!365206 (= e!223637 (and e!223636 mapRes!14226))))

(declare-fun condMapEmpty!14226 () Bool)

(declare-fun mapDefault!14226 () ValueCell!3883)

