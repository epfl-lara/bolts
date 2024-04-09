; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40742 () Bool)

(assert start!40742)

(declare-fun b_free!10745 () Bool)

(declare-fun b_next!10745 () Bool)

(assert (=> start!40742 (= b_free!10745 (not b_next!10745))))

(declare-fun tp!38055 () Bool)

(declare-fun b_and!18775 () Bool)

(assert (=> start!40742 (= tp!38055 b_and!18775)))

(declare-datatypes ((V!17215 0))(
  ( (V!17216 (val!6086 Int)) )
))
(declare-fun minValue!515 () V!17215)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29821 () Bool)

(declare-datatypes ((ValueCell!5698 0))(
  ( (ValueCellFull!5698 (v!8337 V!17215)) (EmptyCell!5698) )
))
(declare-datatypes ((array!27933 0))(
  ( (array!27934 (arr!13409 (Array (_ BitVec 32) ValueCell!5698)) (size!13761 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27933)

(declare-datatypes ((tuple2!7946 0))(
  ( (tuple2!7947 (_1!3983 (_ BitVec 64)) (_2!3983 V!17215)) )
))
(declare-datatypes ((List!8053 0))(
  ( (Nil!8050) (Cons!8049 (h!8905 tuple2!7946) (t!13829 List!8053)) )
))
(declare-datatypes ((ListLongMap!6873 0))(
  ( (ListLongMap!6874 (toList!3452 List!8053)) )
))
(declare-fun call!29825 () ListLongMap!6873)

(declare-fun c!55949 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27935 0))(
  ( (array!27936 (arr!13410 (Array (_ BitVec 32) (_ BitVec 64))) (size!13762 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27935)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!204790 () array!27933)

(declare-fun zeroValue!515 () V!17215)

(declare-fun lt!204786 () array!27935)

(declare-fun getCurrentListMapNoExtraKeys!1629 (array!27935 array!27933 (_ BitVec 32) (_ BitVec 32) V!17215 V!17215 (_ BitVec 32) Int) ListLongMap!6873)

(assert (=> bm!29821 (= call!29825 (getCurrentListMapNoExtraKeys!1629 (ite c!55949 lt!204786 _keys!709) (ite c!55949 lt!204790 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!268600 () Bool)

(declare-fun e!264202 () Bool)

(assert (=> start!40742 (=> (not res!268600) (not e!264202))))

(assert (=> start!40742 (= res!268600 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13762 _keys!709))))))

(assert (=> start!40742 e!264202))

(declare-fun tp_is_empty!12083 () Bool)

(assert (=> start!40742 tp_is_empty!12083))

(assert (=> start!40742 tp!38055))

(assert (=> start!40742 true))

(declare-fun e!264209 () Bool)

(declare-fun array_inv!9704 (array!27933) Bool)

(assert (=> start!40742 (and (array_inv!9704 _values!549) e!264209)))

(declare-fun array_inv!9705 (array!27935) Bool)

(assert (=> start!40742 (array_inv!9705 _keys!709)))

(declare-fun call!29824 () ListLongMap!6873)

(declare-fun b!450998 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!264207 () Bool)

(declare-fun v!412 () V!17215)

(declare-fun +!1520 (ListLongMap!6873 tuple2!7946) ListLongMap!6873)

(assert (=> b!450998 (= e!264207 (= call!29825 (+!1520 call!29824 (tuple2!7947 k!794 v!412))))))

(declare-fun lt!204789 () ListLongMap!6873)

(declare-fun e!264206 () Bool)

(declare-fun b!450999 () Bool)

(declare-fun get!6608 (ValueCell!5698 V!17215) V!17215)

(declare-fun dynLambda!845 (Int (_ BitVec 64)) V!17215)

(assert (=> b!450999 (= e!264206 (= lt!204789 (+!1520 (getCurrentListMapNoExtraKeys!1629 lt!204786 lt!204790 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7947 (select (arr!13410 lt!204786) from!863) (get!6608 (select (arr!13409 lt!204790) from!863) (dynLambda!845 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!451000 () Bool)

(declare-fun e!264208 () Bool)

(assert (=> b!451000 (= e!264208 (not e!264206))))

(declare-fun res!268606 () Bool)

(assert (=> b!451000 (=> res!268606 e!264206)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451000 (= res!268606 (validKeyInArray!0 (select (arr!13410 _keys!709) from!863)))))

(assert (=> b!451000 e!264207))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451000 (= c!55949 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13145 0))(
  ( (Unit!13146) )
))
(declare-fun lt!204787 () Unit!13145)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!691 (array!27935 array!27933 (_ BitVec 32) (_ BitVec 32) V!17215 V!17215 (_ BitVec 32) (_ BitVec 64) V!17215 (_ BitVec 32) Int) Unit!13145)

(assert (=> b!451000 (= lt!204787 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!691 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451001 () Bool)

(declare-fun res!268601 () Bool)

(declare-fun e!264204 () Bool)

(assert (=> b!451001 (=> (not res!268601) (not e!264204))))

(declare-datatypes ((List!8054 0))(
  ( (Nil!8051) (Cons!8050 (h!8906 (_ BitVec 64)) (t!13830 List!8054)) )
))
(declare-fun arrayNoDuplicates!0 (array!27935 (_ BitVec 32) List!8054) Bool)

(assert (=> b!451001 (= res!268601 (arrayNoDuplicates!0 lt!204786 #b00000000000000000000000000000000 Nil!8051))))

(declare-fun mapIsEmpty!19758 () Bool)

(declare-fun mapRes!19758 () Bool)

(assert (=> mapIsEmpty!19758 mapRes!19758))

(declare-fun b!451002 () Bool)

(declare-fun e!264210 () Bool)

(assert (=> b!451002 (= e!264210 tp_is_empty!12083)))

(declare-fun b!451003 () Bool)

(declare-fun e!264205 () Bool)

(assert (=> b!451003 (= e!264205 tp_is_empty!12083)))

(declare-fun b!451004 () Bool)

(declare-fun res!268608 () Bool)

(assert (=> b!451004 (=> (not res!268608) (not e!264202))))

(assert (=> b!451004 (= res!268608 (or (= (select (arr!13410 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13410 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451005 () Bool)

(assert (=> b!451005 (= e!264204 e!264208)))

(declare-fun res!268605 () Bool)

(assert (=> b!451005 (=> (not res!268605) (not e!264208))))

(assert (=> b!451005 (= res!268605 (= from!863 i!563))))

(assert (=> b!451005 (= lt!204789 (getCurrentListMapNoExtraKeys!1629 lt!204786 lt!204790 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451005 (= lt!204790 (array!27934 (store (arr!13409 _values!549) i!563 (ValueCellFull!5698 v!412)) (size!13761 _values!549)))))

(declare-fun lt!204788 () ListLongMap!6873)

(assert (=> b!451005 (= lt!204788 (getCurrentListMapNoExtraKeys!1629 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451006 () Bool)

(assert (=> b!451006 (= e!264202 e!264204)))

(declare-fun res!268599 () Bool)

(assert (=> b!451006 (=> (not res!268599) (not e!264204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27935 (_ BitVec 32)) Bool)

(assert (=> b!451006 (= res!268599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204786 mask!1025))))

(assert (=> b!451006 (= lt!204786 (array!27936 (store (arr!13410 _keys!709) i!563 k!794) (size!13762 _keys!709)))))

(declare-fun b!451007 () Bool)

(declare-fun res!268598 () Bool)

(assert (=> b!451007 (=> (not res!268598) (not e!264202))))

(assert (=> b!451007 (= res!268598 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8051))))

(declare-fun b!451008 () Bool)

(declare-fun res!268602 () Bool)

(assert (=> b!451008 (=> (not res!268602) (not e!264202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451008 (= res!268602 (validMask!0 mask!1025))))

(declare-fun b!451009 () Bool)

(assert (=> b!451009 (= e!264209 (and e!264210 mapRes!19758))))

(declare-fun condMapEmpty!19758 () Bool)

(declare-fun mapDefault!19758 () ValueCell!5698)

