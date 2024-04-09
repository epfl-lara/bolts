; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40706 () Bool)

(assert start!40706)

(declare-fun b_free!10709 () Bool)

(declare-fun b_next!10709 () Bool)

(assert (=> start!40706 (= b_free!10709 (not b_next!10709))))

(declare-fun tp!37947 () Bool)

(declare-fun b_and!18735 () Bool)

(assert (=> start!40706 (= tp!37947 b_and!18735)))

(declare-fun b!449978 () Bool)

(declare-fun res!267855 () Bool)

(declare-fun e!263732 () Bool)

(assert (=> b!449978 (=> (not res!267855) (not e!263732))))

(declare-datatypes ((array!27861 0))(
  ( (array!27862 (arr!13373 (Array (_ BitVec 32) (_ BitVec 64))) (size!13725 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27861)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27861 (_ BitVec 32)) Bool)

(assert (=> b!449978 (= res!267855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!17167 0))(
  ( (V!17168 (val!6068 Int)) )
))
(declare-datatypes ((tuple2!7910 0))(
  ( (tuple2!7911 (_1!3965 (_ BitVec 64)) (_2!3965 V!17167)) )
))
(declare-datatypes ((List!8020 0))(
  ( (Nil!8017) (Cons!8016 (h!8872 tuple2!7910) (t!13790 List!8020)) )
))
(declare-datatypes ((ListLongMap!6837 0))(
  ( (ListLongMap!6838 (toList!3434 List!8020)) )
))
(declare-fun call!29716 () ListLongMap!6837)

(declare-fun b!449979 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!29717 () ListLongMap!6837)

(declare-fun e!263727 () Bool)

(declare-fun v!412 () V!17167)

(declare-fun +!1507 (ListLongMap!6837 tuple2!7910) ListLongMap!6837)

(assert (=> b!449979 (= e!263727 (= call!29716 (+!1507 call!29717 (tuple2!7911 k!794 v!412))))))

(declare-fun b!449980 () Bool)

(declare-fun res!267861 () Bool)

(assert (=> b!449980 (=> (not res!267861) (not e!263732))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5680 0))(
  ( (ValueCellFull!5680 (v!8319 V!17167)) (EmptyCell!5680) )
))
(declare-datatypes ((array!27863 0))(
  ( (array!27864 (arr!13374 (Array (_ BitVec 32) ValueCell!5680)) (size!13726 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27863)

(assert (=> b!449980 (= res!267861 (and (= (size!13726 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13725 _keys!709) (size!13726 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449981 () Bool)

(declare-fun res!267864 () Bool)

(declare-fun e!263731 () Bool)

(assert (=> b!449981 (=> (not res!267864) (not e!263731))))

(declare-fun lt!204502 () array!27861)

(declare-datatypes ((List!8021 0))(
  ( (Nil!8018) (Cons!8017 (h!8873 (_ BitVec 64)) (t!13791 List!8021)) )
))
(declare-fun arrayNoDuplicates!0 (array!27861 (_ BitVec 32) List!8021) Bool)

(assert (=> b!449981 (= res!267864 (arrayNoDuplicates!0 lt!204502 #b00000000000000000000000000000000 Nil!8018))))

(declare-fun b!449982 () Bool)

(declare-fun e!263729 () Bool)

(declare-fun e!263730 () Bool)

(declare-fun mapRes!19704 () Bool)

(assert (=> b!449982 (= e!263729 (and e!263730 mapRes!19704))))

(declare-fun condMapEmpty!19704 () Bool)

(declare-fun mapDefault!19704 () ValueCell!5680)

