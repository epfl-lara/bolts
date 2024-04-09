; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73388 () Bool)

(assert start!73388)

(declare-fun b_free!14275 () Bool)

(declare-fun b_next!14275 () Bool)

(assert (=> start!73388 (= b_free!14275 (not b_next!14275))))

(declare-fun tp!50330 () Bool)

(declare-fun b_and!23649 () Bool)

(assert (=> start!73388 (= tp!50330 b_and!23649)))

(declare-fun b!855924 () Bool)

(declare-fun res!581439 () Bool)

(declare-fun e!477167 () Bool)

(assert (=> b!855924 (=> (not res!581439) (not e!477167))))

(declare-datatypes ((array!48992 0))(
  ( (array!48993 (arr!23523 (Array (_ BitVec 32) (_ BitVec 64))) (size!23964 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48992)

(declare-datatypes ((List!16741 0))(
  ( (Nil!16738) (Cons!16737 (h!17868 (_ BitVec 64)) (t!23390 List!16741)) )
))
(declare-fun arrayNoDuplicates!0 (array!48992 (_ BitVec 32) List!16741) Bool)

(assert (=> b!855924 (= res!581439 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16738))))

(declare-fun b!855925 () Bool)

(declare-fun res!581435 () Bool)

(assert (=> b!855925 (=> (not res!581435) (not e!477167))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48992 (_ BitVec 32)) Bool)

(assert (=> b!855925 (= res!581435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!581440 () Bool)

(assert (=> start!73388 (=> (not res!581440) (not e!477167))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73388 (= res!581440 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23964 _keys!868))))))

(assert (=> start!73388 e!477167))

(declare-fun tp_is_empty!16411 () Bool)

(assert (=> start!73388 tp_is_empty!16411))

(assert (=> start!73388 true))

(assert (=> start!73388 tp!50330))

(declare-fun array_inv!18620 (array!48992) Bool)

(assert (=> start!73388 (array_inv!18620 _keys!868)))

(declare-datatypes ((V!26929 0))(
  ( (V!26930 (val!8253 Int)) )
))
(declare-datatypes ((ValueCell!7766 0))(
  ( (ValueCellFull!7766 (v!10674 V!26929)) (EmptyCell!7766) )
))
(declare-datatypes ((array!48994 0))(
  ( (array!48995 (arr!23524 (Array (_ BitVec 32) ValueCell!7766)) (size!23965 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48994)

(declare-fun e!477165 () Bool)

(declare-fun array_inv!18621 (array!48994) Bool)

(assert (=> start!73388 (and (array_inv!18621 _values!688) e!477165)))

(declare-fun b!855926 () Bool)

(declare-fun e!477164 () Bool)

(assert (=> b!855926 (= e!477167 e!477164)))

(declare-fun res!581441 () Bool)

(assert (=> b!855926 (=> (not res!581441) (not e!477164))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855926 (= res!581441 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!385780 () array!48994)

(declare-fun minValue!654 () V!26929)

(declare-datatypes ((tuple2!10866 0))(
  ( (tuple2!10867 (_1!5443 (_ BitVec 64)) (_2!5443 V!26929)) )
))
(declare-datatypes ((List!16742 0))(
  ( (Nil!16739) (Cons!16738 (h!17869 tuple2!10866) (t!23391 List!16742)) )
))
(declare-datatypes ((ListLongMap!9649 0))(
  ( (ListLongMap!9650 (toList!4840 List!16742)) )
))
(declare-fun lt!385781 () ListLongMap!9649)

(declare-fun zeroValue!654 () V!26929)

(declare-fun getCurrentListMapNoExtraKeys!2822 (array!48992 array!48994 (_ BitVec 32) (_ BitVec 32) V!26929 V!26929 (_ BitVec 32) Int) ListLongMap!9649)

(assert (=> b!855926 (= lt!385781 (getCurrentListMapNoExtraKeys!2822 _keys!868 lt!385780 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26929)

(assert (=> b!855926 (= lt!385780 (array!48995 (store (arr!23524 _values!688) i!612 (ValueCellFull!7766 v!557)) (size!23965 _values!688)))))

(declare-fun lt!385782 () ListLongMap!9649)

(assert (=> b!855926 (= lt!385782 (getCurrentListMapNoExtraKeys!2822 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26216 () Bool)

(declare-fun mapRes!26216 () Bool)

(declare-fun tp!50329 () Bool)

(declare-fun e!477168 () Bool)

(assert (=> mapNonEmpty!26216 (= mapRes!26216 (and tp!50329 e!477168))))

(declare-fun mapValue!26216 () ValueCell!7766)

(declare-fun mapRest!26216 () (Array (_ BitVec 32) ValueCell!7766))

(declare-fun mapKey!26216 () (_ BitVec 32))

(assert (=> mapNonEmpty!26216 (= (arr!23524 _values!688) (store mapRest!26216 mapKey!26216 mapValue!26216))))

(declare-fun b!855927 () Bool)

(declare-fun e!477166 () Bool)

(assert (=> b!855927 (= e!477166 tp_is_empty!16411)))

(declare-fun mapIsEmpty!26216 () Bool)

(assert (=> mapIsEmpty!26216 mapRes!26216))

(declare-fun b!855928 () Bool)

(assert (=> b!855928 (= e!477165 (and e!477166 mapRes!26216))))

(declare-fun condMapEmpty!26216 () Bool)

(declare-fun mapDefault!26216 () ValueCell!7766)

