; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36646 () Bool)

(assert start!36646)

(declare-fun b!365505 () Bool)

(declare-fun res!204435 () Bool)

(declare-fun e!223845 () Bool)

(assert (=> b!365505 (=> (not res!204435) (not e!223845))))

(declare-datatypes ((array!20877 0))(
  ( (array!20878 (arr!9908 (Array (_ BitVec 32) (_ BitVec 64))) (size!10260 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20877)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20877 (_ BitVec 32)) Bool)

(assert (=> b!365505 (= res!204435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365506 () Bool)

(declare-fun res!204437 () Bool)

(assert (=> b!365506 (=> (not res!204437) (not e!223845))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365506 (= res!204437 (validKeyInArray!0 k!778))))

(declare-fun b!365507 () Bool)

(declare-fun res!204434 () Bool)

(assert (=> b!365507 (=> (not res!204434) (not e!223845))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365507 (= res!204434 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10260 _keys!658))))))

(declare-fun b!365508 () Bool)

(assert (=> b!365508 (= e!223845 (and (or (= (select (arr!9908 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9908 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!10260 _keys!658)) (bvsge (size!10260 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!365509 () Bool)

(declare-fun res!204438 () Bool)

(assert (=> b!365509 (=> (not res!204438) (not e!223845))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12403 0))(
  ( (V!12404 (val!4281 Int)) )
))
(declare-datatypes ((ValueCell!3893 0))(
  ( (ValueCellFull!3893 (v!6473 V!12403)) (EmptyCell!3893) )
))
(declare-datatypes ((array!20879 0))(
  ( (array!20880 (arr!9909 (Array (_ BitVec 32) ValueCell!3893)) (size!10261 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20879)

(assert (=> b!365509 (= res!204438 (and (= (size!10261 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10260 _keys!658) (size!10261 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365510 () Bool)

(declare-fun e!223843 () Bool)

(declare-fun tp_is_empty!8473 () Bool)

(assert (=> b!365510 (= e!223843 tp_is_empty!8473)))

(declare-fun mapNonEmpty!14262 () Bool)

(declare-fun mapRes!14262 () Bool)

(declare-fun tp!28338 () Bool)

(declare-fun e!223846 () Bool)

(assert (=> mapNonEmpty!14262 (= mapRes!14262 (and tp!28338 e!223846))))

(declare-fun mapValue!14262 () ValueCell!3893)

(declare-fun mapRest!14262 () (Array (_ BitVec 32) ValueCell!3893))

(declare-fun mapKey!14262 () (_ BitVec 32))

(assert (=> mapNonEmpty!14262 (= (arr!9909 _values!506) (store mapRest!14262 mapKey!14262 mapValue!14262))))

(declare-fun b!365511 () Bool)

(assert (=> b!365511 (= e!223846 tp_is_empty!8473)))

(declare-fun res!204436 () Bool)

(assert (=> start!36646 (=> (not res!204436) (not e!223845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36646 (= res!204436 (validMask!0 mask!970))))

(assert (=> start!36646 e!223845))

(assert (=> start!36646 true))

(declare-fun e!223842 () Bool)

(declare-fun array_inv!7328 (array!20879) Bool)

(assert (=> start!36646 (and (array_inv!7328 _values!506) e!223842)))

(declare-fun array_inv!7329 (array!20877) Bool)

(assert (=> start!36646 (array_inv!7329 _keys!658)))

(declare-fun b!365504 () Bool)

(declare-fun res!204433 () Bool)

(assert (=> b!365504 (=> (not res!204433) (not e!223845))))

(declare-datatypes ((List!5554 0))(
  ( (Nil!5551) (Cons!5550 (h!6406 (_ BitVec 64)) (t!10712 List!5554)) )
))
(declare-fun arrayNoDuplicates!0 (array!20877 (_ BitVec 32) List!5554) Bool)

(assert (=> b!365504 (= res!204433 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5551))))

(declare-fun mapIsEmpty!14262 () Bool)

(assert (=> mapIsEmpty!14262 mapRes!14262))

(declare-fun b!365512 () Bool)

(assert (=> b!365512 (= e!223842 (and e!223843 mapRes!14262))))

(declare-fun condMapEmpty!14262 () Bool)

(declare-fun mapDefault!14262 () ValueCell!3893)

