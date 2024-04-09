; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20880 () Bool)

(assert start!20880)

(declare-fun b_free!5521 () Bool)

(declare-fun b_next!5521 () Bool)

(assert (=> start!20880 (= b_free!5521 (not b_next!5521))))

(declare-fun tp!19603 () Bool)

(declare-fun b_and!12285 () Bool)

(assert (=> start!20880 (= tp!19603 b_and!12285)))

(declare-fun mapNonEmpty!9143 () Bool)

(declare-fun mapRes!9143 () Bool)

(declare-fun tp!19604 () Bool)

(declare-fun e!136450 () Bool)

(assert (=> mapNonEmpty!9143 (= mapRes!9143 (and tp!19604 e!136450))))

(declare-fun mapKey!9143 () (_ BitVec 32))

(declare-datatypes ((V!6825 0))(
  ( (V!6826 (val!2736 Int)) )
))
(declare-datatypes ((ValueCell!2348 0))(
  ( (ValueCellFull!2348 (v!4702 V!6825)) (EmptyCell!2348) )
))
(declare-datatypes ((array!9962 0))(
  ( (array!9963 (arr!4731 (Array (_ BitVec 32) ValueCell!2348)) (size!5056 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9962)

(declare-fun mapValue!9143 () ValueCell!2348)

(declare-fun mapRest!9143 () (Array (_ BitVec 32) ValueCell!2348))

(assert (=> mapNonEmpty!9143 (= (arr!4731 _values!649) (store mapRest!9143 mapKey!9143 mapValue!9143))))

(declare-fun b!209438 () Bool)

(declare-fun res!102122 () Bool)

(declare-fun e!136451 () Bool)

(assert (=> b!209438 (=> (not res!102122) (not e!136451))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9964 0))(
  ( (array!9965 (arr!4732 (Array (_ BitVec 32) (_ BitVec 64))) (size!5057 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9964)

(assert (=> b!209438 (= res!102122 (= (select (arr!4732 _keys!825) i!601) k!843))))

(declare-fun res!102120 () Bool)

(assert (=> start!20880 (=> (not res!102120) (not e!136451))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20880 (= res!102120 (validMask!0 mask!1149))))

(assert (=> start!20880 e!136451))

(declare-fun e!136453 () Bool)

(declare-fun array_inv!3125 (array!9962) Bool)

(assert (=> start!20880 (and (array_inv!3125 _values!649) e!136453)))

(assert (=> start!20880 true))

(declare-fun tp_is_empty!5383 () Bool)

(assert (=> start!20880 tp_is_empty!5383))

(declare-fun array_inv!3126 (array!9964) Bool)

(assert (=> start!20880 (array_inv!3126 _keys!825)))

(assert (=> start!20880 tp!19603))

(declare-fun minValue!615 () V!6825)

(declare-fun b!209439 () Bool)

(declare-datatypes ((tuple2!4130 0))(
  ( (tuple2!4131 (_1!2075 (_ BitVec 64)) (_2!2075 V!6825)) )
))
(declare-datatypes ((List!3050 0))(
  ( (Nil!3047) (Cons!3046 (h!3688 tuple2!4130) (t!7989 List!3050)) )
))
(declare-datatypes ((ListLongMap!3057 0))(
  ( (ListLongMap!3058 (toList!1544 List!3050)) )
))
(declare-fun lt!107067 () ListLongMap!3057)

(declare-fun zeroValue!615 () V!6825)

(declare-fun lt!107063 () ListLongMap!3057)

(declare-fun e!136452 () Bool)

(declare-fun +!537 (ListLongMap!3057 tuple2!4130) ListLongMap!3057)

(assert (=> b!209439 (= e!136452 (= lt!107067 (+!537 (+!537 lt!107063 (tuple2!4131 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (tuple2!4131 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!209440 () Bool)

(declare-fun res!102124 () Bool)

(assert (=> b!209440 (=> (not res!102124) (not e!136451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9964 (_ BitVec 32)) Bool)

(assert (=> b!209440 (= res!102124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209441 () Bool)

(declare-fun res!102123 () Bool)

(assert (=> b!209441 (=> (not res!102123) (not e!136451))))

(assert (=> b!209441 (= res!102123 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5057 _keys!825))))))

(declare-fun b!209442 () Bool)

(declare-fun res!102121 () Bool)

(assert (=> b!209442 (=> (not res!102121) (not e!136451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209442 (= res!102121 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!9143 () Bool)

(assert (=> mapIsEmpty!9143 mapRes!9143))

(declare-fun b!209443 () Bool)

(declare-fun res!102126 () Bool)

(assert (=> b!209443 (=> (not res!102126) (not e!136451))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209443 (= res!102126 (and (= (size!5056 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5057 _keys!825) (size!5056 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209444 () Bool)

(declare-fun res!102127 () Bool)

(assert (=> b!209444 (=> (not res!102127) (not e!136451))))

(declare-datatypes ((List!3051 0))(
  ( (Nil!3048) (Cons!3047 (h!3689 (_ BitVec 64)) (t!7990 List!3051)) )
))
(declare-fun arrayNoDuplicates!0 (array!9964 (_ BitVec 32) List!3051) Bool)

(assert (=> b!209444 (= res!102127 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3048))))

(declare-fun b!209445 () Bool)

(declare-fun e!136448 () Bool)

(assert (=> b!209445 (= e!136453 (and e!136448 mapRes!9143))))

(declare-fun condMapEmpty!9143 () Bool)

(declare-fun mapDefault!9143 () ValueCell!2348)

