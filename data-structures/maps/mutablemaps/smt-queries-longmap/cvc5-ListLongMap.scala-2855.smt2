; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41168 () Bool)

(assert start!41168)

(declare-fun b_free!11029 () Bool)

(declare-fun b_next!11029 () Bool)

(assert (=> start!41168 (= b_free!11029 (not b_next!11029))))

(declare-fun tp!38923 () Bool)

(declare-fun b_and!19315 () Bool)

(assert (=> start!41168 (= tp!38923 b_and!19315)))

(declare-fun b!459501 () Bool)

(declare-fun e!268161 () Bool)

(declare-fun tp_is_empty!12367 () Bool)

(assert (=> b!459501 (= e!268161 tp_is_empty!12367)))

(declare-fun b!459502 () Bool)

(declare-fun res!274714 () Bool)

(declare-fun e!268168 () Bool)

(assert (=> b!459502 (=> (not res!274714) (not e!268168))))

(declare-datatypes ((array!28499 0))(
  ( (array!28500 (arr!13687 (Array (_ BitVec 32) (_ BitVec 64))) (size!14039 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28499)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459502 (= res!274714 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!459503 () Bool)

(declare-fun e!268165 () Bool)

(declare-fun e!268164 () Bool)

(assert (=> b!459503 (= e!268165 e!268164)))

(declare-fun res!274707 () Bool)

(assert (=> b!459503 (=> (not res!274707) (not e!268164))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459503 (= res!274707 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17595 0))(
  ( (V!17596 (val!6228 Int)) )
))
(declare-fun minValue!515 () V!17595)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5840 0))(
  ( (ValueCellFull!5840 (v!8502 V!17595)) (EmptyCell!5840) )
))
(declare-datatypes ((array!28501 0))(
  ( (array!28502 (arr!13688 (Array (_ BitVec 32) ValueCell!5840)) (size!14040 (_ BitVec 32))) )
))
(declare-fun lt!207961 () array!28501)

(declare-fun zeroValue!515 () V!17595)

(declare-datatypes ((tuple2!8176 0))(
  ( (tuple2!8177 (_1!4098 (_ BitVec 64)) (_2!4098 V!17595)) )
))
(declare-datatypes ((List!8280 0))(
  ( (Nil!8277) (Cons!8276 (h!9132 tuple2!8176) (t!14196 List!8280)) )
))
(declare-datatypes ((ListLongMap!7103 0))(
  ( (ListLongMap!7104 (toList!3567 List!8280)) )
))
(declare-fun lt!207958 () ListLongMap!7103)

(declare-fun lt!207954 () array!28499)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1737 (array!28499 array!28501 (_ BitVec 32) (_ BitVec 32) V!17595 V!17595 (_ BitVec 32) Int) ListLongMap!7103)

(assert (=> b!459503 (= lt!207958 (getCurrentListMapNoExtraKeys!1737 lt!207954 lt!207961 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17595)

(declare-fun _values!549 () array!28501)

(assert (=> b!459503 (= lt!207961 (array!28502 (store (arr!13688 _values!549) i!563 (ValueCellFull!5840 v!412)) (size!14040 _values!549)))))

(declare-fun lt!207956 () ListLongMap!7103)

(assert (=> b!459503 (= lt!207956 (getCurrentListMapNoExtraKeys!1737 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459504 () Bool)

(declare-fun res!274704 () Bool)

(assert (=> b!459504 (=> (not res!274704) (not e!268168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28499 (_ BitVec 32)) Bool)

(assert (=> b!459504 (= res!274704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459505 () Bool)

(declare-fun res!274710 () Bool)

(assert (=> b!459505 (=> (not res!274710) (not e!268165))))

(declare-datatypes ((List!8281 0))(
  ( (Nil!8278) (Cons!8277 (h!9133 (_ BitVec 64)) (t!14197 List!8281)) )
))
(declare-fun arrayNoDuplicates!0 (array!28499 (_ BitVec 32) List!8281) Bool)

(assert (=> b!459505 (= res!274710 (arrayNoDuplicates!0 lt!207954 #b00000000000000000000000000000000 Nil!8278))))

(declare-fun b!459506 () Bool)

(assert (=> b!459506 (= e!268168 e!268165)))

(declare-fun res!274709 () Bool)

(assert (=> b!459506 (=> (not res!274709) (not e!268165))))

(assert (=> b!459506 (= res!274709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207954 mask!1025))))

(assert (=> b!459506 (= lt!207954 (array!28500 (store (arr!13687 _keys!709) i!563 k!794) (size!14039 _keys!709)))))

(declare-fun b!459507 () Bool)

(declare-datatypes ((Unit!13308 0))(
  ( (Unit!13309) )
))
(declare-fun e!268162 () Unit!13308)

(declare-fun Unit!13310 () Unit!13308)

(assert (=> b!459507 (= e!268162 Unit!13310)))

(declare-fun b!459508 () Bool)

(declare-fun Unit!13311 () Unit!13308)

(assert (=> b!459508 (= e!268162 Unit!13311)))

(declare-fun lt!207960 () Unit!13308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28499 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13308)

(assert (=> b!459508 (= lt!207960 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459508 false))

(declare-fun mapIsEmpty!20200 () Bool)

(declare-fun mapRes!20200 () Bool)

(assert (=> mapIsEmpty!20200 mapRes!20200))

(declare-fun b!459509 () Bool)

(declare-fun res!274711 () Bool)

(assert (=> b!459509 (=> (not res!274711) (not e!268168))))

(assert (=> b!459509 (= res!274711 (and (= (size!14040 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14039 _keys!709) (size!14040 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459510 () Bool)

(declare-fun e!268166 () Bool)

(declare-fun e!268167 () Bool)

(assert (=> b!459510 (= e!268166 (and e!268167 mapRes!20200))))

(declare-fun condMapEmpty!20200 () Bool)

(declare-fun mapDefault!20200 () ValueCell!5840)

