; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93674 () Bool)

(assert start!93674)

(declare-fun res!707767 () Bool)

(declare-fun e!602968 () Bool)

(assert (=> start!93674 (=> (not res!707767) (not e!602968))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93674 (= res!707767 (validMask!0 mask!1515))))

(assert (=> start!93674 e!602968))

(assert (=> start!93674 true))

(declare-datatypes ((V!38393 0))(
  ( (V!38394 (val!12522 Int)) )
))
(declare-datatypes ((ValueCell!11768 0))(
  ( (ValueCellFull!11768 (v!15133 V!38393)) (EmptyCell!11768) )
))
(declare-datatypes ((array!66896 0))(
  ( (array!66897 (arr!32154 (Array (_ BitVec 32) ValueCell!11768)) (size!32691 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66896)

(declare-fun e!602970 () Bool)

(declare-fun array_inv!24770 (array!66896) Bool)

(assert (=> start!93674 (and (array_inv!24770 _values!955) e!602970)))

(declare-datatypes ((array!66898 0))(
  ( (array!66899 (arr!32155 (Array (_ BitVec 32) (_ BitVec 64))) (size!32692 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66898)

(declare-fun array_inv!24771 (array!66898) Bool)

(assert (=> start!93674 (array_inv!24771 _keys!1163)))

(declare-fun mapNonEmpty!39079 () Bool)

(declare-fun mapRes!39079 () Bool)

(declare-fun tp!74886 () Bool)

(declare-fun e!602969 () Bool)

(assert (=> mapNonEmpty!39079 (= mapRes!39079 (and tp!74886 e!602969))))

(declare-fun mapRest!39079 () (Array (_ BitVec 32) ValueCell!11768))

(declare-fun mapKey!39079 () (_ BitVec 32))

(declare-fun mapValue!39079 () ValueCell!11768)

(assert (=> mapNonEmpty!39079 (= (arr!32154 _values!955) (store mapRest!39079 mapKey!39079 mapValue!39079))))

(declare-fun b!1059361 () Bool)

(declare-fun res!707768 () Bool)

(assert (=> b!1059361 (=> (not res!707768) (not e!602968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66898 (_ BitVec 32)) Bool)

(assert (=> b!1059361 (= res!707768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059362 () Bool)

(declare-fun tp_is_empty!24943 () Bool)

(assert (=> b!1059362 (= e!602969 tp_is_empty!24943)))

(declare-fun b!1059363 () Bool)

(assert (=> b!1059363 (= e!602968 false)))

(declare-fun lt!467096 () Bool)

(declare-datatypes ((List!22549 0))(
  ( (Nil!22546) (Cons!22545 (h!23754 (_ BitVec 64)) (t!31863 List!22549)) )
))
(declare-fun arrayNoDuplicates!0 (array!66898 (_ BitVec 32) List!22549) Bool)

(assert (=> b!1059363 (= lt!467096 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22546))))

(declare-fun b!1059364 () Bool)

(declare-fun e!602971 () Bool)

(assert (=> b!1059364 (= e!602970 (and e!602971 mapRes!39079))))

(declare-fun condMapEmpty!39079 () Bool)

(declare-fun mapDefault!39079 () ValueCell!11768)

