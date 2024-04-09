; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82404 () Bool)

(assert start!82404)

(declare-fun b_free!18643 () Bool)

(declare-fun b_next!18643 () Bool)

(assert (=> start!82404 (= b_free!18643 (not b_next!18643))))

(declare-fun tp!64900 () Bool)

(declare-fun b_and!30149 () Bool)

(assert (=> start!82404 (= tp!64900 b_and!30149)))

(declare-fun b!960353 () Bool)

(declare-fun res!642955 () Bool)

(declare-fun e!541384 () Bool)

(assert (=> b!960353 (=> (not res!642955) (not e!541384))))

(declare-datatypes ((array!58811 0))(
  ( (array!58812 (arr!28275 (Array (_ BitVec 32) (_ BitVec 64))) (size!28755 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58811)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58811 (_ BitVec 32)) Bool)

(assert (=> b!960353 (= res!642955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960354 () Bool)

(declare-fun e!541386 () Bool)

(declare-fun tp_is_empty!21355 () Bool)

(assert (=> b!960354 (= e!541386 tp_is_empty!21355)))

(declare-fun b!960355 () Bool)

(assert (=> b!960355 (= e!541384 false)))

(declare-datatypes ((V!33457 0))(
  ( (V!33458 (val!10728 Int)) )
))
(declare-fun minValue!1328 () V!33457)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10196 0))(
  ( (ValueCellFull!10196 (v!13285 V!33457)) (EmptyCell!10196) )
))
(declare-datatypes ((array!58813 0))(
  ( (array!58814 (arr!28276 (Array (_ BitVec 32) ValueCell!10196)) (size!28756 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58813)

(declare-fun lt!430601 () Bool)

(declare-fun zeroValue!1328 () V!33457)

(declare-datatypes ((tuple2!13920 0))(
  ( (tuple2!13921 (_1!6970 (_ BitVec 64)) (_2!6970 V!33457)) )
))
(declare-datatypes ((List!19782 0))(
  ( (Nil!19779) (Cons!19778 (h!20940 tuple2!13920) (t!28153 List!19782)) )
))
(declare-datatypes ((ListLongMap!12631 0))(
  ( (ListLongMap!12632 (toList!6331 List!19782)) )
))
(declare-fun contains!5381 (ListLongMap!12631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3516 (array!58811 array!58813 (_ BitVec 32) (_ BitVec 32) V!33457 V!33457 (_ BitVec 32) Int) ListLongMap!12631)

(assert (=> b!960355 (= lt!430601 (contains!5381 (getCurrentListMap!3516 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28275 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!34012 () Bool)

(declare-fun mapRes!34012 () Bool)

(assert (=> mapIsEmpty!34012 mapRes!34012))

(declare-fun b!960356 () Bool)

(declare-fun res!642958 () Bool)

(assert (=> b!960356 (=> (not res!642958) (not e!541384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960356 (= res!642958 (validKeyInArray!0 (select (arr!28275 _keys!1668) i!793)))))

(declare-fun res!642957 () Bool)

(assert (=> start!82404 (=> (not res!642957) (not e!541384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82404 (= res!642957 (validMask!0 mask!2088))))

(assert (=> start!82404 e!541384))

(assert (=> start!82404 true))

(assert (=> start!82404 tp_is_empty!21355))

(declare-fun array_inv!21851 (array!58811) Bool)

(assert (=> start!82404 (array_inv!21851 _keys!1668)))

(declare-fun e!541387 () Bool)

(declare-fun array_inv!21852 (array!58813) Bool)

(assert (=> start!82404 (and (array_inv!21852 _values!1386) e!541387)))

(assert (=> start!82404 tp!64900))

(declare-fun mapNonEmpty!34012 () Bool)

(declare-fun tp!64899 () Bool)

(assert (=> mapNonEmpty!34012 (= mapRes!34012 (and tp!64899 e!541386))))

(declare-fun mapRest!34012 () (Array (_ BitVec 32) ValueCell!10196))

(declare-fun mapValue!34012 () ValueCell!10196)

(declare-fun mapKey!34012 () (_ BitVec 32))

(assert (=> mapNonEmpty!34012 (= (arr!28276 _values!1386) (store mapRest!34012 mapKey!34012 mapValue!34012))))

(declare-fun b!960357 () Bool)

(declare-fun e!541385 () Bool)

(assert (=> b!960357 (= e!541385 tp_is_empty!21355)))

(declare-fun b!960358 () Bool)

(assert (=> b!960358 (= e!541387 (and e!541385 mapRes!34012))))

(declare-fun condMapEmpty!34012 () Bool)

(declare-fun mapDefault!34012 () ValueCell!10196)

