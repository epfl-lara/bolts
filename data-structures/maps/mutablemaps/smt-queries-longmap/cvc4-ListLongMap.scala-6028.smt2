; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78084 () Bool)

(assert start!78084)

(declare-fun b_free!16583 () Bool)

(declare-fun b_next!16583 () Bool)

(assert (=> start!78084 (= b_free!16583 (not b_next!16583))))

(declare-fun tp!58021 () Bool)

(declare-fun b_and!27173 () Bool)

(assert (=> start!78084 (= tp!58021 b_and!27173)))

(declare-fun b!910986 () Bool)

(declare-fun res!614774 () Bool)

(declare-fun e!510908 () Bool)

(assert (=> b!910986 (=> (not res!614774) (not e!510908))))

(declare-datatypes ((array!54012 0))(
  ( (array!54013 (arr!25958 (Array (_ BitVec 32) (_ BitVec 64))) (size!26418 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54012)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54012 (_ BitVec 32)) Bool)

(assert (=> b!910986 (= res!614774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30223 () Bool)

(declare-fun mapRes!30223 () Bool)

(declare-fun tp!58020 () Bool)

(declare-fun e!510904 () Bool)

(assert (=> mapNonEmpty!30223 (= mapRes!30223 (and tp!58020 e!510904))))

(declare-datatypes ((V!30299 0))(
  ( (V!30300 (val!9551 Int)) )
))
(declare-datatypes ((ValueCell!9019 0))(
  ( (ValueCellFull!9019 (v!12060 V!30299)) (EmptyCell!9019) )
))
(declare-datatypes ((array!54014 0))(
  ( (array!54015 (arr!25959 (Array (_ BitVec 32) ValueCell!9019)) (size!26419 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54014)

(declare-fun mapKey!30223 () (_ BitVec 32))

(declare-fun mapRest!30223 () (Array (_ BitVec 32) ValueCell!9019))

(declare-fun mapValue!30223 () ValueCell!9019)

(assert (=> mapNonEmpty!30223 (= (arr!25959 _values!1152) (store mapRest!30223 mapKey!30223 mapValue!30223))))

(declare-fun b!910987 () Bool)

(declare-fun e!510905 () Bool)

(declare-fun tp_is_empty!19001 () Bool)

(assert (=> b!910987 (= e!510905 tp_is_empty!19001)))

(declare-fun b!910988 () Bool)

(declare-fun res!614773 () Bool)

(assert (=> b!910988 (=> (not res!614773) (not e!510908))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910988 (= res!614773 (and (= (size!26419 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26418 _keys!1386) (size!26419 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910989 () Bool)

(declare-fun res!614775 () Bool)

(assert (=> b!910989 (=> (not res!614775) (not e!510908))))

(declare-datatypes ((List!18338 0))(
  ( (Nil!18335) (Cons!18334 (h!19480 (_ BitVec 64)) (t!25931 List!18338)) )
))
(declare-fun arrayNoDuplicates!0 (array!54012 (_ BitVec 32) List!18338) Bool)

(assert (=> b!910989 (= res!614775 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18335))))

(declare-fun b!910990 () Bool)

(assert (=> b!910990 (= e!510908 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30299)

(declare-fun lt!410302 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30299)

(declare-datatypes ((tuple2!12490 0))(
  ( (tuple2!12491 (_1!6255 (_ BitVec 64)) (_2!6255 V!30299)) )
))
(declare-datatypes ((List!18339 0))(
  ( (Nil!18336) (Cons!18335 (h!19481 tuple2!12490) (t!25932 List!18339)) )
))
(declare-datatypes ((ListLongMap!11201 0))(
  ( (ListLongMap!11202 (toList!5616 List!18339)) )
))
(declare-fun contains!4625 (ListLongMap!11201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2846 (array!54012 array!54014 (_ BitVec 32) (_ BitVec 32) V!30299 V!30299 (_ BitVec 32) Int) ListLongMap!11201)

(assert (=> b!910990 (= lt!410302 (contains!4625 (getCurrentListMap!2846 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30223 () Bool)

(assert (=> mapIsEmpty!30223 mapRes!30223))

(declare-fun res!614776 () Bool)

(assert (=> start!78084 (=> (not res!614776) (not e!510908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78084 (= res!614776 (validMask!0 mask!1756))))

(assert (=> start!78084 e!510908))

(declare-fun e!510906 () Bool)

(declare-fun array_inv!20278 (array!54014) Bool)

(assert (=> start!78084 (and (array_inv!20278 _values!1152) e!510906)))

(assert (=> start!78084 tp!58021))

(assert (=> start!78084 true))

(assert (=> start!78084 tp_is_empty!19001))

(declare-fun array_inv!20279 (array!54012) Bool)

(assert (=> start!78084 (array_inv!20279 _keys!1386)))

(declare-fun b!910991 () Bool)

(assert (=> b!910991 (= e!510904 tp_is_empty!19001)))

(declare-fun b!910992 () Bool)

(assert (=> b!910992 (= e!510906 (and e!510905 mapRes!30223))))

(declare-fun condMapEmpty!30223 () Bool)

(declare-fun mapDefault!30223 () ValueCell!9019)

