; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42596 () Bool)

(assert start!42596)

(declare-fun b_free!12023 () Bool)

(declare-fun b_next!12023 () Bool)

(assert (=> start!42596 (= b_free!12023 (not b_next!12023))))

(declare-fun tp!42109 () Bool)

(declare-fun b_and!20521 () Bool)

(assert (=> start!42596 (= tp!42109 b_and!20521)))

(declare-fun mapNonEmpty!21895 () Bool)

(declare-fun mapRes!21895 () Bool)

(declare-fun tp!42108 () Bool)

(declare-fun e!278851 () Bool)

(assert (=> mapNonEmpty!21895 (= mapRes!21895 (and tp!42108 e!278851))))

(declare-datatypes ((V!19039 0))(
  ( (V!19040 (val!6770 Int)) )
))
(declare-datatypes ((ValueCell!6382 0))(
  ( (ValueCellFull!6382 (v!9059 V!19039)) (EmptyCell!6382) )
))
(declare-datatypes ((array!30615 0))(
  ( (array!30616 (arr!14722 (Array (_ BitVec 32) ValueCell!6382)) (size!15074 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30615)

(declare-fun mapValue!21895 () ValueCell!6382)

(declare-fun mapKey!21895 () (_ BitVec 32))

(declare-fun mapRest!21895 () (Array (_ BitVec 32) ValueCell!6382))

(assert (=> mapNonEmpty!21895 (= (arr!14722 _values!833) (store mapRest!21895 mapKey!21895 mapValue!21895))))

(declare-fun b!474935 () Bool)

(declare-fun tp_is_empty!13451 () Bool)

(assert (=> b!474935 (= e!278851 tp_is_empty!13451)))

(declare-fun b!474936 () Bool)

(declare-fun res!283710 () Bool)

(declare-fun e!278849 () Bool)

(assert (=> b!474936 (=> (not res!283710) (not e!278849))))

(declare-datatypes ((array!30617 0))(
  ( (array!30618 (arr!14723 (Array (_ BitVec 32) (_ BitVec 64))) (size!15075 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30617)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30617 (_ BitVec 32)) Bool)

(assert (=> b!474936 (= res!283710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474937 () Bool)

(declare-fun res!283712 () Bool)

(assert (=> b!474937 (=> (not res!283712) (not e!278849))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474937 (= res!283712 (and (= (size!15074 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15075 _keys!1025) (size!15074 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474938 () Bool)

(declare-fun res!283711 () Bool)

(assert (=> b!474938 (=> (not res!283711) (not e!278849))))

(declare-datatypes ((List!9037 0))(
  ( (Nil!9034) (Cons!9033 (h!9889 (_ BitVec 64)) (t!15019 List!9037)) )
))
(declare-fun arrayNoDuplicates!0 (array!30617 (_ BitVec 32) List!9037) Bool)

(assert (=> b!474938 (= res!283711 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9034))))

(declare-fun mapIsEmpty!21895 () Bool)

(assert (=> mapIsEmpty!21895 mapRes!21895))

(declare-fun b!474939 () Bool)

(assert (=> b!474939 (= e!278849 false)))

(declare-fun zeroValue!794 () V!19039)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8926 0))(
  ( (tuple2!8927 (_1!4473 (_ BitVec 64)) (_2!4473 V!19039)) )
))
(declare-datatypes ((List!9038 0))(
  ( (Nil!9035) (Cons!9034 (h!9890 tuple2!8926) (t!15020 List!9038)) )
))
(declare-datatypes ((ListLongMap!7853 0))(
  ( (ListLongMap!7854 (toList!3942 List!9038)) )
))
(declare-fun lt!216351 () ListLongMap!7853)

(declare-fun minValueAfter!38 () V!19039)

(declare-fun getCurrentListMapNoExtraKeys!2096 (array!30617 array!30615 (_ BitVec 32) (_ BitVec 32) V!19039 V!19039 (_ BitVec 32) Int) ListLongMap!7853)

(assert (=> b!474939 (= lt!216351 (getCurrentListMapNoExtraKeys!2096 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19039)

(declare-fun lt!216350 () ListLongMap!7853)

(assert (=> b!474939 (= lt!216350 (getCurrentListMapNoExtraKeys!2096 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283713 () Bool)

(assert (=> start!42596 (=> (not res!283713) (not e!278849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42596 (= res!283713 (validMask!0 mask!1365))))

(assert (=> start!42596 e!278849))

(assert (=> start!42596 tp_is_empty!13451))

(assert (=> start!42596 tp!42109))

(assert (=> start!42596 true))

(declare-fun array_inv!10610 (array!30617) Bool)

(assert (=> start!42596 (array_inv!10610 _keys!1025)))

(declare-fun e!278850 () Bool)

(declare-fun array_inv!10611 (array!30615) Bool)

(assert (=> start!42596 (and (array_inv!10611 _values!833) e!278850)))

(declare-fun b!474940 () Bool)

(declare-fun e!278848 () Bool)

(assert (=> b!474940 (= e!278848 tp_is_empty!13451)))

(declare-fun b!474941 () Bool)

(assert (=> b!474941 (= e!278850 (and e!278848 mapRes!21895))))

(declare-fun condMapEmpty!21895 () Bool)

(declare-fun mapDefault!21895 () ValueCell!6382)

