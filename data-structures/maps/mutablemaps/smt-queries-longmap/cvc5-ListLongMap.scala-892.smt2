; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20460 () Bool)

(assert start!20460)

(declare-fun b_free!5107 () Bool)

(declare-fun b_next!5107 () Bool)

(assert (=> start!20460 (= b_free!5107 (not b_next!5107))))

(declare-fun tp!18353 () Bool)

(declare-fun b_and!11871 () Bool)

(assert (=> start!20460 (= tp!18353 b_and!11871)))

(declare-fun b!202519 () Bool)

(declare-fun res!97092 () Bool)

(declare-fun e!132658 () Bool)

(assert (=> b!202519 (=> (not res!97092) (not e!132658))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202519 (= res!97092 (validKeyInArray!0 k!843))))

(declare-fun b!202520 () Bool)

(declare-fun res!97098 () Bool)

(assert (=> b!202520 (=> (not res!97098) (not e!132658))))

(declare-datatypes ((array!9150 0))(
  ( (array!9151 (arr!4325 (Array (_ BitVec 32) (_ BitVec 64))) (size!4650 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9150)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9150 (_ BitVec 32)) Bool)

(assert (=> b!202520 (= res!97098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202521 () Bool)

(declare-fun res!97096 () Bool)

(assert (=> b!202521 (=> (not res!97096) (not e!132658))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6265 0))(
  ( (V!6266 (val!2526 Int)) )
))
(declare-datatypes ((ValueCell!2138 0))(
  ( (ValueCellFull!2138 (v!4492 V!6265)) (EmptyCell!2138) )
))
(declare-datatypes ((array!9152 0))(
  ( (array!9153 (arr!4326 (Array (_ BitVec 32) ValueCell!2138)) (size!4651 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9152)

(assert (=> b!202521 (= res!97096 (and (= (size!4651 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4650 _keys!825) (size!4651 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202522 () Bool)

(declare-fun e!132652 () Bool)

(declare-fun tp_is_empty!4963 () Bool)

(assert (=> b!202522 (= e!132652 tp_is_empty!4963)))

(declare-fun b!202523 () Bool)

(declare-fun e!132653 () Bool)

(declare-fun e!132657 () Bool)

(assert (=> b!202523 (= e!132653 e!132657)))

(declare-fun res!97097 () Bool)

(assert (=> b!202523 (=> res!97097 e!132657)))

(assert (=> b!202523 (= res!97097 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3828 0))(
  ( (tuple2!3829 (_1!1924 (_ BitVec 64)) (_2!1924 V!6265)) )
))
(declare-datatypes ((List!2755 0))(
  ( (Nil!2752) (Cons!2751 (h!3393 tuple2!3828) (t!7694 List!2755)) )
))
(declare-datatypes ((ListLongMap!2755 0))(
  ( (ListLongMap!2756 (toList!1393 List!2755)) )
))
(declare-fun lt!101773 () ListLongMap!2755)

(declare-fun lt!101764 () ListLongMap!2755)

(assert (=> b!202523 (= lt!101773 lt!101764)))

(declare-fun lt!101768 () ListLongMap!2755)

(declare-fun lt!101770 () tuple2!3828)

(declare-fun +!410 (ListLongMap!2755 tuple2!3828) ListLongMap!2755)

(assert (=> b!202523 (= lt!101764 (+!410 lt!101768 lt!101770))))

(declare-fun lt!101769 () ListLongMap!2755)

(declare-fun lt!101766 () ListLongMap!2755)

(assert (=> b!202523 (= lt!101769 lt!101766)))

(declare-fun lt!101765 () ListLongMap!2755)

(assert (=> b!202523 (= lt!101766 (+!410 lt!101765 lt!101770))))

(declare-fun lt!101772 () ListLongMap!2755)

(assert (=> b!202523 (= lt!101773 (+!410 lt!101772 lt!101770))))

(declare-fun zeroValue!615 () V!6265)

(assert (=> b!202523 (= lt!101770 (tuple2!3829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202524 () Bool)

(declare-fun res!97091 () Bool)

(assert (=> b!202524 (=> (not res!97091) (not e!132658))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202524 (= res!97091 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4650 _keys!825))))))

(declare-fun b!202525 () Bool)

(declare-fun res!97094 () Bool)

(assert (=> b!202525 (=> (not res!97094) (not e!132658))))

(declare-datatypes ((List!2756 0))(
  ( (Nil!2753) (Cons!2752 (h!3394 (_ BitVec 64)) (t!7695 List!2756)) )
))
(declare-fun arrayNoDuplicates!0 (array!9150 (_ BitVec 32) List!2756) Bool)

(assert (=> b!202525 (= res!97094 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2753))))

(declare-fun b!202526 () Bool)

(declare-fun res!97093 () Bool)

(assert (=> b!202526 (=> (not res!97093) (not e!132658))))

(assert (=> b!202526 (= res!97093 (= (select (arr!4325 _keys!825) i!601) k!843))))

(declare-fun b!202527 () Bool)

(declare-fun e!132656 () Bool)

(declare-fun mapRes!8513 () Bool)

(assert (=> b!202527 (= e!132656 (and e!132652 mapRes!8513))))

(declare-fun condMapEmpty!8513 () Bool)

(declare-fun mapDefault!8513 () ValueCell!2138)

