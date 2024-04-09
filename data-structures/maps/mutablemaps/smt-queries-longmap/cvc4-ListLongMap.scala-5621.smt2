; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73542 () Bool)

(assert start!73542)

(declare-fun b_free!14429 () Bool)

(declare-fun b_next!14429 () Bool)

(assert (=> start!73542 (= b_free!14429 (not b_next!14429))))

(declare-fun tp!50791 () Bool)

(declare-fun b_and!23855 () Bool)

(assert (=> start!73542 (= tp!50791 b_and!23855)))

(declare-fun mapIsEmpty!26447 () Bool)

(declare-fun mapRes!26447 () Bool)

(assert (=> mapIsEmpty!26447 mapRes!26447))

(declare-fun b!858872 () Bool)

(declare-fun e!478678 () Bool)

(declare-fun tp_is_empty!16565 () Bool)

(assert (=> b!858872 (= e!478678 tp_is_empty!16565)))

(declare-fun b!858873 () Bool)

(declare-fun res!583644 () Bool)

(declare-fun e!478676 () Bool)

(assert (=> b!858873 (=> (not res!583644) (not e!478676))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858873 (= res!583644 (validMask!0 mask!1196))))

(declare-fun b!858874 () Bool)

(declare-fun e!478677 () Bool)

(assert (=> b!858874 (= e!478677 true)))

(declare-datatypes ((array!49288 0))(
  ( (array!49289 (arr!23671 (Array (_ BitVec 32) (_ BitVec 64))) (size!24112 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49288)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((List!16856 0))(
  ( (Nil!16853) (Cons!16852 (h!17983 (_ BitVec 64)) (t!23559 List!16856)) )
))
(declare-fun arrayNoDuplicates!0 (array!49288 (_ BitVec 32) List!16856) Bool)

(assert (=> b!858874 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16853)))

(declare-datatypes ((Unit!29248 0))(
  ( (Unit!29249) )
))
(declare-fun lt!386983 () Unit!29248)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49288 (_ BitVec 32) (_ BitVec 32)) Unit!29248)

(assert (=> b!858874 (= lt!386983 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858875 () Bool)

(declare-fun res!583639 () Bool)

(assert (=> b!858875 (=> (not res!583639) (not e!478676))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858875 (= res!583639 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24112 _keys!868))))))

(declare-fun b!858876 () Bool)

(declare-fun e!478673 () Bool)

(assert (=> b!858876 (= e!478673 e!478677)))

(declare-fun res!583638 () Bool)

(assert (=> b!858876 (=> res!583638 e!478677)))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!858876 (= res!583638 (not (= (select (arr!23671 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!27133 0))(
  ( (V!27134 (val!8330 Int)) )
))
(declare-datatypes ((tuple2!10984 0))(
  ( (tuple2!10985 (_1!5502 (_ BitVec 64)) (_2!5502 V!27133)) )
))
(declare-datatypes ((List!16857 0))(
  ( (Nil!16854) (Cons!16853 (h!17984 tuple2!10984) (t!23560 List!16857)) )
))
(declare-datatypes ((ListLongMap!9767 0))(
  ( (ListLongMap!9768 (toList!4899 List!16857)) )
))
(declare-fun lt!386985 () ListLongMap!9767)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7843 0))(
  ( (ValueCellFull!7843 (v!10751 V!27133)) (EmptyCell!7843) )
))
(declare-datatypes ((array!49290 0))(
  ( (array!49291 (arr!23672 (Array (_ BitVec 32) ValueCell!7843)) (size!24113 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49290)

(declare-fun lt!386979 () ListLongMap!9767)

(declare-fun +!2202 (ListLongMap!9767 tuple2!10984) ListLongMap!9767)

(declare-fun get!12483 (ValueCell!7843 V!27133) V!27133)

(declare-fun dynLambda!1091 (Int (_ BitVec 64)) V!27133)

(assert (=> b!858876 (= lt!386985 (+!2202 lt!386979 (tuple2!10985 (select (arr!23671 _keys!868) from!1053) (get!12483 (select (arr!23672 _values!688) from!1053) (dynLambda!1091 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858877 () Bool)

(declare-fun res!583637 () Bool)

(assert (=> b!858877 (=> (not res!583637) (not e!478676))))

(assert (=> b!858877 (= res!583637 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16853))))

(declare-fun b!858878 () Bool)

(declare-fun res!583645 () Bool)

(assert (=> b!858878 (=> (not res!583645) (not e!478676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49288 (_ BitVec 32)) Bool)

(assert (=> b!858878 (= res!583645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858879 () Bool)

(declare-fun e!478679 () Bool)

(assert (=> b!858879 (= e!478679 tp_is_empty!16565)))

(declare-fun b!858880 () Bool)

(declare-fun res!583642 () Bool)

(assert (=> b!858880 (=> (not res!583642) (not e!478676))))

(assert (=> b!858880 (= res!583642 (and (= (select (arr!23671 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!583640 () Bool)

(assert (=> start!73542 (=> (not res!583640) (not e!478676))))

(assert (=> start!73542 (= res!583640 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24112 _keys!868))))))

(assert (=> start!73542 e!478676))

(assert (=> start!73542 tp_is_empty!16565))

(assert (=> start!73542 true))

(assert (=> start!73542 tp!50791))

(declare-fun array_inv!18724 (array!49288) Bool)

(assert (=> start!73542 (array_inv!18724 _keys!868)))

(declare-fun e!478674 () Bool)

(declare-fun array_inv!18725 (array!49290) Bool)

(assert (=> start!73542 (and (array_inv!18725 _values!688) e!478674)))

(declare-fun b!858881 () Bool)

(assert (=> b!858881 (= e!478674 (and e!478679 mapRes!26447))))

(declare-fun condMapEmpty!26447 () Bool)

(declare-fun mapDefault!26447 () ValueCell!7843)

