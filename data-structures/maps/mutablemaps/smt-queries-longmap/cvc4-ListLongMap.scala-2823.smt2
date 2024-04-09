; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40914 () Bool)

(assert start!40914)

(declare-fun b_free!10841 () Bool)

(declare-fun b_next!10841 () Bool)

(assert (=> start!40914 (= b_free!10841 (not b_next!10841))))

(declare-fun tp!38349 () Bool)

(declare-fun b_and!19001 () Bool)

(assert (=> start!40914 (= tp!38349 b_and!19001)))

(declare-fun b!454352 () Bool)

(declare-fun e!265817 () Bool)

(declare-fun tp_is_empty!12179 () Bool)

(assert (=> b!454352 (= e!265817 tp_is_empty!12179)))

(declare-fun b!454353 () Bool)

(declare-fun e!265816 () Bool)

(assert (=> b!454353 (= e!265816 tp_is_empty!12179)))

(declare-fun b!454354 () Bool)

(declare-fun res!270808 () Bool)

(declare-fun e!265819 () Bool)

(assert (=> b!454354 (=> (not res!270808) (not e!265819))))

(declare-datatypes ((array!28127 0))(
  ( (array!28128 (arr!13504 (Array (_ BitVec 32) (_ BitVec 64))) (size!13856 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28127)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28127 (_ BitVec 32)) Bool)

(assert (=> b!454354 (= res!270808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454355 () Bool)

(declare-fun res!270809 () Bool)

(declare-fun e!265818 () Bool)

(assert (=> b!454355 (=> (not res!270809) (not e!265818))))

(declare-fun lt!206120 () array!28127)

(declare-datatypes ((List!8133 0))(
  ( (Nil!8130) (Cons!8129 (h!8985 (_ BitVec 64)) (t!13969 List!8133)) )
))
(declare-fun arrayNoDuplicates!0 (array!28127 (_ BitVec 32) List!8133) Bool)

(assert (=> b!454355 (= res!270809 (arrayNoDuplicates!0 lt!206120 #b00000000000000000000000000000000 Nil!8130))))

(declare-fun mapNonEmpty!19909 () Bool)

(declare-fun mapRes!19909 () Bool)

(declare-fun tp!38350 () Bool)

(assert (=> mapNonEmpty!19909 (= mapRes!19909 (and tp!38350 e!265816))))

(declare-datatypes ((V!17343 0))(
  ( (V!17344 (val!6134 Int)) )
))
(declare-datatypes ((ValueCell!5746 0))(
  ( (ValueCellFull!5746 (v!8396 V!17343)) (EmptyCell!5746) )
))
(declare-fun mapValue!19909 () ValueCell!5746)

(declare-datatypes ((array!28129 0))(
  ( (array!28130 (arr!13505 (Array (_ BitVec 32) ValueCell!5746)) (size!13857 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28129)

(declare-fun mapKey!19909 () (_ BitVec 32))

(declare-fun mapRest!19909 () (Array (_ BitVec 32) ValueCell!5746))

(assert (=> mapNonEmpty!19909 (= (arr!13505 _values!549) (store mapRest!19909 mapKey!19909 mapValue!19909))))

(declare-fun b!454356 () Bool)

(declare-fun res!270818 () Bool)

(assert (=> b!454356 (=> (not res!270818) (not e!265819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454356 (= res!270818 (validMask!0 mask!1025))))

(declare-fun b!454357 () Bool)

(declare-fun res!270814 () Bool)

(assert (=> b!454357 (=> (not res!270814) (not e!265818))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454357 (= res!270814 (bvsle from!863 i!563))))

(declare-fun b!454358 () Bool)

(declare-fun res!270812 () Bool)

(assert (=> b!454358 (=> (not res!270812) (not e!265819))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454358 (= res!270812 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!454359 () Bool)

(declare-fun res!270813 () Bool)

(assert (=> b!454359 (=> (not res!270813) (not e!265819))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!454359 (= res!270813 (and (= (size!13857 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13856 _keys!709) (size!13857 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!270810 () Bool)

(assert (=> start!40914 (=> (not res!270810) (not e!265819))))

(assert (=> start!40914 (= res!270810 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13856 _keys!709))))))

(assert (=> start!40914 e!265819))

(assert (=> start!40914 tp_is_empty!12179))

(assert (=> start!40914 tp!38349))

(assert (=> start!40914 true))

(declare-fun e!265815 () Bool)

(declare-fun array_inv!9774 (array!28129) Bool)

(assert (=> start!40914 (and (array_inv!9774 _values!549) e!265815)))

(declare-fun array_inv!9775 (array!28127) Bool)

(assert (=> start!40914 (array_inv!9775 _keys!709)))

(declare-fun b!454360 () Bool)

(declare-fun res!270811 () Bool)

(assert (=> b!454360 (=> (not res!270811) (not e!265819))))

(assert (=> b!454360 (= res!270811 (or (= (select (arr!13504 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13504 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454361 () Bool)

(assert (=> b!454361 (= e!265815 (and e!265817 mapRes!19909))))

(declare-fun condMapEmpty!19909 () Bool)

(declare-fun mapDefault!19909 () ValueCell!5746)

