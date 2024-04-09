; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78808 () Bool)

(assert start!78808)

(declare-fun b_free!16993 () Bool)

(declare-fun b_next!16993 () Bool)

(assert (=> start!78808 (= b_free!16993 (not b_next!16993))))

(declare-fun tp!59421 () Bool)

(declare-fun b_and!27741 () Bool)

(assert (=> start!78808 (= tp!59421 b_and!27741)))

(declare-fun b!919286 () Bool)

(declare-fun res!619980 () Bool)

(declare-fun e!516039 () Bool)

(assert (=> b!919286 (=> (not res!619980) (not e!516039))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919286 (= res!619980 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919287 () Bool)

(declare-fun res!619981 () Bool)

(assert (=> b!919287 (=> (not res!619981) (not e!516039))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919287 (= res!619981 (validKeyInArray!0 k!1099))))

(declare-fun b!919288 () Bool)

(declare-fun res!619973 () Bool)

(declare-fun e!516033 () Bool)

(assert (=> b!919288 (=> (not res!619973) (not e!516033))))

(declare-datatypes ((array!54994 0))(
  ( (array!54995 (arr!26438 (Array (_ BitVec 32) (_ BitVec 64))) (size!26898 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54994)

(assert (=> b!919288 (= res!619973 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26898 _keys!1487))))))

(declare-fun mapNonEmpty!31008 () Bool)

(declare-fun mapRes!31008 () Bool)

(declare-fun tp!59420 () Bool)

(declare-fun e!516038 () Bool)

(assert (=> mapNonEmpty!31008 (= mapRes!31008 (and tp!59420 e!516038))))

(declare-datatypes ((V!30967 0))(
  ( (V!30968 (val!9801 Int)) )
))
(declare-datatypes ((ValueCell!9269 0))(
  ( (ValueCellFull!9269 (v!12319 V!30967)) (EmptyCell!9269) )
))
(declare-fun mapValue!31008 () ValueCell!9269)

(declare-fun mapRest!31008 () (Array (_ BitVec 32) ValueCell!9269))

(declare-datatypes ((array!54996 0))(
  ( (array!54997 (arr!26439 (Array (_ BitVec 32) ValueCell!9269)) (size!26899 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54996)

(declare-fun mapKey!31008 () (_ BitVec 32))

(assert (=> mapNonEmpty!31008 (= (arr!26439 _values!1231) (store mapRest!31008 mapKey!31008 mapValue!31008))))

(declare-fun b!919289 () Bool)

(declare-fun res!619974 () Bool)

(assert (=> b!919289 (=> (not res!619974) (not e!516033))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!919289 (= res!619974 (and (= (size!26899 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26898 _keys!1487) (size!26899 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919290 () Bool)

(declare-fun e!516035 () Bool)

(declare-fun tp_is_empty!19501 () Bool)

(assert (=> b!919290 (= e!516035 tp_is_empty!19501)))

(declare-fun b!919291 () Bool)

(declare-fun res!619975 () Bool)

(assert (=> b!919291 (=> (not res!619975) (not e!516039))))

(declare-fun v!791 () V!30967)

(declare-datatypes ((tuple2!12824 0))(
  ( (tuple2!12825 (_1!6422 (_ BitVec 64)) (_2!6422 V!30967)) )
))
(declare-datatypes ((List!18666 0))(
  ( (Nil!18663) (Cons!18662 (h!19808 tuple2!12824) (t!26397 List!18666)) )
))
(declare-datatypes ((ListLongMap!11535 0))(
  ( (ListLongMap!11536 (toList!5783 List!18666)) )
))
(declare-fun lt!412652 () ListLongMap!11535)

(declare-fun apply!598 (ListLongMap!11535 (_ BitVec 64)) V!30967)

(assert (=> b!919291 (= res!619975 (= (apply!598 lt!412652 k!1099) v!791))))

(declare-fun b!919292 () Bool)

(declare-fun e!516034 () Bool)

(assert (=> b!919292 (= e!516039 e!516034)))

(declare-fun res!619977 () Bool)

(assert (=> b!919292 (=> (not res!619977) (not e!516034))))

(declare-fun lt!412649 () (_ BitVec 64))

(assert (=> b!919292 (= res!619977 (validKeyInArray!0 lt!412649))))

(assert (=> b!919292 (= lt!412649 (select (arr!26438 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!619979 () Bool)

(assert (=> start!78808 (=> (not res!619979) (not e!516033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78808 (= res!619979 (validMask!0 mask!1881))))

(assert (=> start!78808 e!516033))

(assert (=> start!78808 true))

(assert (=> start!78808 tp_is_empty!19501))

(declare-fun e!516037 () Bool)

(declare-fun array_inv!20598 (array!54996) Bool)

(assert (=> start!78808 (and (array_inv!20598 _values!1231) e!516037)))

(assert (=> start!78808 tp!59421))

(declare-fun array_inv!20599 (array!54994) Bool)

(assert (=> start!78808 (array_inv!20599 _keys!1487)))

(declare-fun b!919293 () Bool)

(declare-fun res!619976 () Bool)

(assert (=> b!919293 (=> (not res!619976) (not e!516033))))

(declare-datatypes ((List!18667 0))(
  ( (Nil!18664) (Cons!18663 (h!19809 (_ BitVec 64)) (t!26398 List!18667)) )
))
(declare-fun arrayNoDuplicates!0 (array!54994 (_ BitVec 32) List!18667) Bool)

(assert (=> b!919293 (= res!619976 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18664))))

(declare-fun b!919294 () Bool)

(declare-fun res!619982 () Bool)

(assert (=> b!919294 (=> (not res!619982) (not e!516033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54994 (_ BitVec 32)) Bool)

(assert (=> b!919294 (= res!619982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919295 () Bool)

(assert (=> b!919295 (= e!516033 e!516039)))

(declare-fun res!619978 () Bool)

(assert (=> b!919295 (=> (not res!619978) (not e!516039))))

(declare-fun contains!4794 (ListLongMap!11535 (_ BitVec 64)) Bool)

(assert (=> b!919295 (= res!619978 (contains!4794 lt!412652 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30967)

(declare-fun minValue!1173 () V!30967)

(declare-fun getCurrentListMap!3006 (array!54994 array!54996 (_ BitVec 32) (_ BitVec 32) V!30967 V!30967 (_ BitVec 32) Int) ListLongMap!11535)

(assert (=> b!919295 (= lt!412652 (getCurrentListMap!3006 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919296 () Bool)

(assert (=> b!919296 (= e!516037 (and e!516035 mapRes!31008))))

(declare-fun condMapEmpty!31008 () Bool)

(declare-fun mapDefault!31008 () ValueCell!9269)

