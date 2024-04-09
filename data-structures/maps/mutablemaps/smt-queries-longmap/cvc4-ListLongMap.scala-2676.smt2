; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39886 () Bool)

(assert start!39886)

(declare-fun b_free!10145 () Bool)

(declare-fun b_next!10145 () Bool)

(assert (=> start!39886 (= b_free!10145 (not b_next!10145))))

(declare-fun tp!35964 () Bool)

(declare-fun b_and!17967 () Bool)

(assert (=> start!39886 (= tp!35964 b_and!17967)))

(declare-fun b!431501 () Bool)

(declare-fun res!253786 () Bool)

(declare-fun e!255333 () Bool)

(assert (=> b!431501 (=> (not res!253786) (not e!255333))))

(declare-datatypes ((array!26407 0))(
  ( (array!26408 (arr!12650 (Array (_ BitVec 32) (_ BitVec 64))) (size!13002 (_ BitVec 32))) )
))
(declare-fun lt!197738 () array!26407)

(declare-datatypes ((List!7496 0))(
  ( (Nil!7493) (Cons!7492 (h!8348 (_ BitVec 64)) (t!13098 List!7496)) )
))
(declare-fun arrayNoDuplicates!0 (array!26407 (_ BitVec 32) List!7496) Bool)

(assert (=> b!431501 (= res!253786 (arrayNoDuplicates!0 lt!197738 #b00000000000000000000000000000000 Nil!7493))))

(declare-fun b!431502 () Bool)

(declare-fun res!253793 () Bool)

(declare-fun e!255327 () Bool)

(assert (=> b!431502 (=> (not res!253793) (not e!255327))))

(declare-fun _keys!709 () array!26407)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26407 (_ BitVec 32)) Bool)

(assert (=> b!431502 (= res!253793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18567 () Bool)

(declare-fun mapRes!18567 () Bool)

(declare-fun tp!35963 () Bool)

(declare-fun e!255334 () Bool)

(assert (=> mapNonEmpty!18567 (= mapRes!18567 (and tp!35963 e!255334))))

(declare-fun mapKey!18567 () (_ BitVec 32))

(declare-datatypes ((V!16167 0))(
  ( (V!16168 (val!5693 Int)) )
))
(declare-datatypes ((ValueCell!5305 0))(
  ( (ValueCellFull!5305 (v!7936 V!16167)) (EmptyCell!5305) )
))
(declare-datatypes ((array!26409 0))(
  ( (array!26410 (arr!12651 (Array (_ BitVec 32) ValueCell!5305)) (size!13003 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26409)

(declare-fun mapValue!18567 () ValueCell!5305)

(declare-fun mapRest!18567 () (Array (_ BitVec 32) ValueCell!5305))

(assert (=> mapNonEmpty!18567 (= (arr!12651 _values!549) (store mapRest!18567 mapKey!18567 mapValue!18567))))

(declare-fun b!431503 () Bool)

(declare-fun e!255326 () Bool)

(declare-fun e!255328 () Bool)

(assert (=> b!431503 (= e!255326 (and e!255328 mapRes!18567))))

(declare-fun condMapEmpty!18567 () Bool)

(declare-fun mapDefault!18567 () ValueCell!5305)

