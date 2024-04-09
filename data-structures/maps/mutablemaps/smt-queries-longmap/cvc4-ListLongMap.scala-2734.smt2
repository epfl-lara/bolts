; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40234 () Bool)

(assert start!40234)

(declare-fun b_free!10493 () Bool)

(declare-fun b_next!10493 () Bool)

(assert (=> start!40234 (= b_free!10493 (not b_next!10493))))

(declare-fun tp!37007 () Bool)

(declare-fun b_and!18479 () Bool)

(assert (=> start!40234 (= tp!37007 b_and!18479)))

(declare-fun b!440993 () Bool)

(declare-fun res!261072 () Bool)

(declare-fun e!259712 () Bool)

(assert (=> b!440993 (=> (not res!261072) (not e!259712))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440993 (= res!261072 (bvsle from!863 i!563))))

(declare-fun b!440994 () Bool)

(declare-fun res!261063 () Bool)

(declare-fun e!259713 () Bool)

(assert (=> b!440994 (=> (not res!261063) (not e!259713))))

(declare-datatypes ((array!27077 0))(
  ( (array!27078 (arr!12985 (Array (_ BitVec 32) (_ BitVec 64))) (size!13337 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27077)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27077 (_ BitVec 32)) Bool)

(assert (=> b!440994 (= res!261063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19089 () Bool)

(declare-fun mapRes!19089 () Bool)

(assert (=> mapIsEmpty!19089 mapRes!19089))

(declare-fun b!440996 () Bool)

(declare-fun res!261066 () Bool)

(assert (=> b!440996 (=> (not res!261066) (not e!259713))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16631 0))(
  ( (V!16632 (val!5867 Int)) )
))
(declare-datatypes ((ValueCell!5479 0))(
  ( (ValueCellFull!5479 (v!8110 V!16631)) (EmptyCell!5479) )
))
(declare-datatypes ((array!27079 0))(
  ( (array!27080 (arr!12986 (Array (_ BitVec 32) ValueCell!5479)) (size!13338 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27079)

(assert (=> b!440996 (= res!261066 (and (= (size!13338 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13337 _keys!709) (size!13338 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440997 () Bool)

(declare-fun res!261067 () Bool)

(assert (=> b!440997 (=> (not res!261067) (not e!259712))))

(declare-fun lt!202782 () array!27077)

(declare-datatypes ((List!7768 0))(
  ( (Nil!7765) (Cons!7764 (h!8620 (_ BitVec 64)) (t!13532 List!7768)) )
))
(declare-fun arrayNoDuplicates!0 (array!27077 (_ BitVec 32) List!7768) Bool)

(assert (=> b!440997 (= res!261067 (arrayNoDuplicates!0 lt!202782 #b00000000000000000000000000000000 Nil!7765))))

(declare-fun b!440998 () Bool)

(assert (=> b!440998 (= e!259713 e!259712)))

(declare-fun res!261062 () Bool)

(assert (=> b!440998 (=> (not res!261062) (not e!259712))))

(assert (=> b!440998 (= res!261062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202782 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!440998 (= lt!202782 (array!27078 (store (arr!12985 _keys!709) i!563 k!794) (size!13337 _keys!709)))))

(declare-fun b!440999 () Bool)

(declare-fun res!261071 () Bool)

(assert (=> b!440999 (=> (not res!261071) (not e!259713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440999 (= res!261071 (validKeyInArray!0 k!794))))

(declare-fun b!441000 () Bool)

(declare-fun res!261061 () Bool)

(assert (=> b!441000 (=> (not res!261061) (not e!259713))))

(assert (=> b!441000 (= res!261061 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7765))))

(declare-fun b!441001 () Bool)

(declare-fun e!259711 () Bool)

(declare-fun tp_is_empty!11645 () Bool)

(assert (=> b!441001 (= e!259711 tp_is_empty!11645)))

(declare-fun b!441002 () Bool)

(declare-fun res!261064 () Bool)

(assert (=> b!441002 (=> (not res!261064) (not e!259713))))

(assert (=> b!441002 (= res!261064 (or (= (select (arr!12985 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12985 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441003 () Bool)

(declare-fun e!259716 () Bool)

(assert (=> b!441003 (= e!259716 (and e!259711 mapRes!19089))))

(declare-fun condMapEmpty!19089 () Bool)

(declare-fun mapDefault!19089 () ValueCell!5479)

