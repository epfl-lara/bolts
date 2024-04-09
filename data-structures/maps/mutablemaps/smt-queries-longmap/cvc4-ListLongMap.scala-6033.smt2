; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78114 () Bool)

(assert start!78114)

(declare-fun b_free!16613 () Bool)

(declare-fun b_next!16613 () Bool)

(assert (=> start!78114 (= b_free!16613 (not b_next!16613))))

(declare-fun tp!58111 () Bool)

(declare-fun b_and!27203 () Bool)

(assert (=> start!78114 (= tp!58111 b_and!27203)))

(declare-fun b!911317 () Bool)

(declare-fun res!614971 () Bool)

(declare-fun e!511131 () Bool)

(assert (=> b!911317 (=> (not res!614971) (not e!511131))))

(declare-datatypes ((V!30339 0))(
  ( (V!30340 (val!9566 Int)) )
))
(declare-datatypes ((ValueCell!9034 0))(
  ( (ValueCellFull!9034 (v!12075 V!30339)) (EmptyCell!9034) )
))
(declare-datatypes ((array!54068 0))(
  ( (array!54069 (arr!25986 (Array (_ BitVec 32) ValueCell!9034)) (size!26446 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54068)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54070 0))(
  ( (array!54071 (arr!25987 (Array (_ BitVec 32) (_ BitVec 64))) (size!26447 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54070)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30339)

(declare-fun zeroValue!1094 () V!30339)

(declare-datatypes ((tuple2!12512 0))(
  ( (tuple2!12513 (_1!6266 (_ BitVec 64)) (_2!6266 V!30339)) )
))
(declare-datatypes ((List!18358 0))(
  ( (Nil!18355) (Cons!18354 (h!19500 tuple2!12512) (t!25951 List!18358)) )
))
(declare-datatypes ((ListLongMap!11223 0))(
  ( (ListLongMap!11224 (toList!5627 List!18358)) )
))
(declare-fun contains!4636 (ListLongMap!11223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2857 (array!54070 array!54068 (_ BitVec 32) (_ BitVec 32) V!30339 V!30339 (_ BitVec 32) Int) ListLongMap!11223)

(assert (=> b!911317 (= res!614971 (contains!4636 (getCurrentListMap!2857 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911318 () Bool)

(declare-fun res!614974 () Bool)

(assert (=> b!911318 (=> (not res!614974) (not e!511131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54070 (_ BitVec 32)) Bool)

(assert (=> b!911318 (= res!614974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911319 () Bool)

(declare-fun res!614973 () Bool)

(assert (=> b!911319 (=> (not res!614973) (not e!511131))))

(assert (=> b!911319 (= res!614973 (and (= (size!26446 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26447 _keys!1386) (size!26446 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911320 () Bool)

(declare-fun res!614972 () Bool)

(assert (=> b!911320 (=> (not res!614972) (not e!511131))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!911320 (= res!614972 (inRange!0 i!717 mask!1756))))

(declare-fun b!911321 () Bool)

(assert (=> b!911321 (= e!511131 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26447 _keys!1386))))))

(declare-fun mapNonEmpty!30268 () Bool)

(declare-fun mapRes!30268 () Bool)

(declare-fun tp!58110 () Bool)

(declare-fun e!511132 () Bool)

(assert (=> mapNonEmpty!30268 (= mapRes!30268 (and tp!58110 e!511132))))

(declare-fun mapValue!30268 () ValueCell!9034)

(declare-fun mapRest!30268 () (Array (_ BitVec 32) ValueCell!9034))

(declare-fun mapKey!30268 () (_ BitVec 32))

(assert (=> mapNonEmpty!30268 (= (arr!25986 _values!1152) (store mapRest!30268 mapKey!30268 mapValue!30268))))

(declare-fun b!911322 () Bool)

(declare-fun tp_is_empty!19031 () Bool)

(assert (=> b!911322 (= e!511132 tp_is_empty!19031)))

(declare-fun b!911323 () Bool)

(declare-fun e!511129 () Bool)

(assert (=> b!911323 (= e!511129 tp_is_empty!19031)))

(declare-fun b!911324 () Bool)

(declare-fun e!511133 () Bool)

(assert (=> b!911324 (= e!511133 (and e!511129 mapRes!30268))))

(declare-fun condMapEmpty!30268 () Bool)

(declare-fun mapDefault!30268 () ValueCell!9034)

