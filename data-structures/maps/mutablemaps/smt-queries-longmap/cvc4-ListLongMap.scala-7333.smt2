; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93720 () Bool)

(assert start!93720)

(declare-fun res!707982 () Bool)

(declare-fun e!603317 () Bool)

(assert (=> start!93720 (=> (not res!707982) (not e!603317))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93720 (= res!707982 (validMask!0 mask!1515))))

(assert (=> start!93720 e!603317))

(assert (=> start!93720 true))

(declare-datatypes ((V!38453 0))(
  ( (V!38454 (val!12545 Int)) )
))
(declare-datatypes ((ValueCell!11791 0))(
  ( (ValueCellFull!11791 (v!15156 V!38453)) (EmptyCell!11791) )
))
(declare-datatypes ((array!66984 0))(
  ( (array!66985 (arr!32198 (Array (_ BitVec 32) ValueCell!11791)) (size!32735 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66984)

(declare-fun e!603313 () Bool)

(declare-fun array_inv!24808 (array!66984) Bool)

(assert (=> start!93720 (and (array_inv!24808 _values!955) e!603313)))

(declare-datatypes ((array!66986 0))(
  ( (array!66987 (arr!32199 (Array (_ BitVec 32) (_ BitVec 64))) (size!32736 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66986)

(declare-fun array_inv!24809 (array!66986) Bool)

(assert (=> start!93720 (array_inv!24809 _keys!1163)))

(declare-fun b!1059783 () Bool)

(declare-fun e!603315 () Bool)

(declare-fun tp_is_empty!24989 () Bool)

(assert (=> b!1059783 (= e!603315 tp_is_empty!24989)))

(declare-fun b!1059784 () Bool)

(declare-fun e!603316 () Bool)

(assert (=> b!1059784 (= e!603316 tp_is_empty!24989)))

(declare-fun b!1059785 () Bool)

(assert (=> b!1059785 (= e!603317 (bvsgt #b00000000000000000000000000000000 (size!32736 _keys!1163)))))

(declare-fun b!1059786 () Bool)

(declare-fun res!707985 () Bool)

(assert (=> b!1059786 (=> (not res!707985) (not e!603317))))

(declare-datatypes ((List!22563 0))(
  ( (Nil!22560) (Cons!22559 (h!23768 (_ BitVec 64)) (t!31877 List!22563)) )
))
(declare-fun arrayNoDuplicates!0 (array!66986 (_ BitVec 32) List!22563) Bool)

(assert (=> b!1059786 (= res!707985 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22560))))

(declare-fun b!1059787 () Bool)

(declare-fun res!707983 () Bool)

(assert (=> b!1059787 (=> (not res!707983) (not e!603317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66986 (_ BitVec 32)) Bool)

(assert (=> b!1059787 (= res!707983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39148 () Bool)

(declare-fun mapRes!39148 () Bool)

(assert (=> mapIsEmpty!39148 mapRes!39148))

(declare-fun b!1059788 () Bool)

(assert (=> b!1059788 (= e!603313 (and e!603316 mapRes!39148))))

(declare-fun condMapEmpty!39148 () Bool)

(declare-fun mapDefault!39148 () ValueCell!11791)

