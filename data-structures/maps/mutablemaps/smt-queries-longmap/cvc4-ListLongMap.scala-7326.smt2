; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93678 () Bool)

(assert start!93678)

(declare-fun b!1059397 () Bool)

(declare-fun e!602999 () Bool)

(assert (=> b!1059397 (= e!602999 false)))

(declare-fun lt!467102 () Bool)

(declare-datatypes ((array!66904 0))(
  ( (array!66905 (arr!32158 (Array (_ BitVec 32) (_ BitVec 64))) (size!32695 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66904)

(declare-datatypes ((List!22551 0))(
  ( (Nil!22548) (Cons!22547 (h!23756 (_ BitVec 64)) (t!31865 List!22551)) )
))
(declare-fun arrayNoDuplicates!0 (array!66904 (_ BitVec 32) List!22551) Bool)

(assert (=> b!1059397 (= lt!467102 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22548))))

(declare-fun b!1059398 () Bool)

(declare-fun e!602998 () Bool)

(declare-fun e!603000 () Bool)

(declare-fun mapRes!39085 () Bool)

(assert (=> b!1059398 (= e!602998 (and e!603000 mapRes!39085))))

(declare-fun condMapEmpty!39085 () Bool)

(declare-datatypes ((V!38397 0))(
  ( (V!38398 (val!12524 Int)) )
))
(declare-datatypes ((ValueCell!11770 0))(
  ( (ValueCellFull!11770 (v!15135 V!38397)) (EmptyCell!11770) )
))
(declare-datatypes ((array!66906 0))(
  ( (array!66907 (arr!32159 (Array (_ BitVec 32) ValueCell!11770)) (size!32696 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66906)

(declare-fun mapDefault!39085 () ValueCell!11770)

