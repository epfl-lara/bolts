; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38158 () Bool)

(assert start!38158)

(declare-fun b_free!9031 () Bool)

(declare-fun b_next!9031 () Bool)

(assert (=> start!38158 (= b_free!9031 (not b_next!9031))))

(declare-fun tp!31874 () Bool)

(declare-fun b_and!16411 () Bool)

(assert (=> start!38158 (= tp!31874 b_and!16411)))

(declare-fun b!393014 () Bool)

(declare-fun res!225211 () Bool)

(declare-fun e!237984 () Bool)

(assert (=> b!393014 (=> (not res!225211) (not e!237984))))

(declare-datatypes ((array!23287 0))(
  ( (array!23288 (arr!11099 (Array (_ BitVec 32) (_ BitVec 64))) (size!11451 (_ BitVec 32))) )
))
(declare-fun lt!185999 () array!23287)

(declare-datatypes ((List!6421 0))(
  ( (Nil!6418) (Cons!6417 (h!7273 (_ BitVec 64)) (t!11599 List!6421)) )
))
(declare-fun arrayNoDuplicates!0 (array!23287 (_ BitVec 32) List!6421) Bool)

(assert (=> b!393014 (= res!225211 (arrayNoDuplicates!0 lt!185999 #b00000000000000000000000000000000 Nil!6418))))

(declare-fun b!393015 () Bool)

(declare-fun e!237981 () Bool)

(assert (=> b!393015 (= e!237981 e!237984)))

(declare-fun res!225213 () Bool)

(assert (=> b!393015 (=> (not res!225213) (not e!237984))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23287 (_ BitVec 32)) Bool)

(assert (=> b!393015 (= res!225213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185999 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23287)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393015 (= lt!185999 (array!23288 (store (arr!11099 _keys!658) i!548 k!778) (size!11451 _keys!658)))))

(declare-fun mapIsEmpty!16149 () Bool)

(declare-fun mapRes!16149 () Bool)

(assert (=> mapIsEmpty!16149 mapRes!16149))

(declare-fun b!393016 () Bool)

(declare-fun res!225202 () Bool)

(assert (=> b!393016 (=> (not res!225202) (not e!237981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393016 (= res!225202 (validKeyInArray!0 k!778))))

(declare-datatypes ((V!14043 0))(
  ( (V!14044 (val!4896 Int)) )
))
(declare-datatypes ((tuple2!6540 0))(
  ( (tuple2!6541 (_1!3280 (_ BitVec 64)) (_2!3280 V!14043)) )
))
(declare-datatypes ((List!6422 0))(
  ( (Nil!6419) (Cons!6418 (h!7274 tuple2!6540) (t!11600 List!6422)) )
))
(declare-datatypes ((ListLongMap!5467 0))(
  ( (ListLongMap!5468 (toList!2749 List!6422)) )
))
(declare-fun lt!185995 () ListLongMap!5467)

(declare-fun lt!185998 () ListLongMap!5467)

(declare-fun e!237986 () Bool)

(declare-fun lt!185991 () tuple2!6540)

(declare-fun b!393017 () Bool)

(declare-fun +!1047 (ListLongMap!5467 tuple2!6540) ListLongMap!5467)

(assert (=> b!393017 (= e!237986 (= (+!1047 lt!185998 lt!185991) lt!185995))))

(declare-fun lt!185993 () ListLongMap!5467)

(declare-fun lt!185990 () ListLongMap!5467)

(assert (=> b!393017 (= lt!185993 (+!1047 lt!185990 lt!185991))))

(declare-fun v!373 () V!14043)

(declare-fun lt!185989 () ListLongMap!5467)

(declare-datatypes ((Unit!11989 0))(
  ( (Unit!11990) )
))
(declare-fun lt!185988 () Unit!11989)

(declare-fun minValue!472 () V!14043)

(declare-fun addCommutativeForDiffKeys!343 (ListLongMap!5467 (_ BitVec 64) V!14043 (_ BitVec 64) V!14043) Unit!11989)

(assert (=> b!393017 (= lt!185988 (addCommutativeForDiffKeys!343 lt!185989 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!393018 () Bool)

(declare-fun res!225206 () Bool)

(assert (=> b!393018 (=> (not res!225206) (not e!237981))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4508 0))(
  ( (ValueCellFull!4508 (v!7129 V!14043)) (EmptyCell!4508) )
))
(declare-datatypes ((array!23289 0))(
  ( (array!23290 (arr!11100 (Array (_ BitVec 32) ValueCell!4508)) (size!11452 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23289)

(assert (=> b!393018 (= res!225206 (and (= (size!11452 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11451 _keys!658) (size!11452 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393019 () Bool)

(declare-fun e!237985 () Bool)

(declare-fun e!237979 () Bool)

(assert (=> b!393019 (= e!237985 (and e!237979 mapRes!16149))))

(declare-fun condMapEmpty!16149 () Bool)

(declare-fun mapDefault!16149 () ValueCell!4508)

