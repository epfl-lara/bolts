; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73866 () Bool)

(assert start!73866)

(declare-fun b_free!14753 () Bool)

(declare-fun b_next!14753 () Bool)

(assert (=> start!73866 (= b_free!14753 (not b_next!14753))))

(declare-fun tp!51764 () Bool)

(declare-fun b_and!24503 () Bool)

(assert (=> start!73866 (= tp!51764 b_and!24503)))

(declare-fun mapIsEmpty!26933 () Bool)

(declare-fun mapRes!26933 () Bool)

(assert (=> mapIsEmpty!26933 mapRes!26933))

(declare-fun res!589142 () Bool)

(declare-fun e!482944 () Bool)

(assert (=> start!73866 (=> (not res!589142) (not e!482944))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49918 0))(
  ( (array!49919 (arr!23986 (Array (_ BitVec 32) (_ BitVec 64))) (size!24427 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49918)

(assert (=> start!73866 (= res!589142 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24427 _keys!868))))))

(assert (=> start!73866 e!482944))

(declare-fun tp_is_empty!16889 () Bool)

(assert (=> start!73866 tp_is_empty!16889))

(assert (=> start!73866 true))

(assert (=> start!73866 tp!51764))

(declare-fun array_inv!18940 (array!49918) Bool)

(assert (=> start!73866 (array_inv!18940 _keys!868)))

(declare-datatypes ((V!27565 0))(
  ( (V!27566 (val!8492 Int)) )
))
(declare-datatypes ((ValueCell!8005 0))(
  ( (ValueCellFull!8005 (v!10913 V!27565)) (EmptyCell!8005) )
))
(declare-datatypes ((array!49920 0))(
  ( (array!49921 (arr!23987 (Array (_ BitVec 32) ValueCell!8005)) (size!24428 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49920)

(declare-fun e!482942 () Bool)

(declare-fun array_inv!18941 (array!49920) Bool)

(assert (=> start!73866 (and (array_inv!18941 _values!688) e!482942)))

(declare-fun b!866925 () Bool)

(declare-fun res!589138 () Bool)

(assert (=> b!866925 (=> (not res!589138) (not e!482944))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866925 (= res!589138 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24427 _keys!868))))))

(declare-fun b!866926 () Bool)

(declare-fun res!589145 () Bool)

(assert (=> b!866926 (=> (not res!589145) (not e!482944))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49918 (_ BitVec 32)) Bool)

(assert (=> b!866926 (= res!589145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866927 () Bool)

(declare-fun e!482938 () Bool)

(assert (=> b!866927 (= e!482942 (and e!482938 mapRes!26933))))

(declare-fun condMapEmpty!26933 () Bool)

(declare-fun mapDefault!26933 () ValueCell!8005)

