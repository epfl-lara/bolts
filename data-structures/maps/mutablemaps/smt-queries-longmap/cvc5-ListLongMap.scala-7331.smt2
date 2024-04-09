; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93704 () Bool)

(assert start!93704)

(declare-fun b!1059631 () Bool)

(declare-fun res!707903 () Bool)

(declare-fun e!603194 () Bool)

(assert (=> b!1059631 (=> (not res!707903) (not e!603194))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38433 0))(
  ( (V!38434 (val!12537 Int)) )
))
(declare-datatypes ((ValueCell!11783 0))(
  ( (ValueCellFull!11783 (v!15148 V!38433)) (EmptyCell!11783) )
))
(declare-datatypes ((array!66952 0))(
  ( (array!66953 (arr!32182 (Array (_ BitVec 32) ValueCell!11783)) (size!32719 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66952)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66954 0))(
  ( (array!66955 (arr!32183 (Array (_ BitVec 32) (_ BitVec 64))) (size!32720 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66954)

(assert (=> b!1059631 (= res!707903 (and (= (size!32719 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32720 _keys!1163) (size!32719 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39124 () Bool)

(declare-fun mapRes!39124 () Bool)

(assert (=> mapIsEmpty!39124 mapRes!39124))

(declare-fun b!1059633 () Bool)

(declare-fun e!603196 () Bool)

(declare-fun tp_is_empty!24973 () Bool)

(assert (=> b!1059633 (= e!603196 tp_is_empty!24973)))

(declare-fun b!1059634 () Bool)

(declare-fun e!603197 () Bool)

(assert (=> b!1059634 (= e!603197 tp_is_empty!24973)))

(declare-fun mapNonEmpty!39124 () Bool)

(declare-fun tp!74931 () Bool)

(assert (=> mapNonEmpty!39124 (= mapRes!39124 (and tp!74931 e!603197))))

(declare-fun mapValue!39124 () ValueCell!11783)

(declare-fun mapRest!39124 () (Array (_ BitVec 32) ValueCell!11783))

(declare-fun mapKey!39124 () (_ BitVec 32))

(assert (=> mapNonEmpty!39124 (= (arr!32182 _values!955) (store mapRest!39124 mapKey!39124 mapValue!39124))))

(declare-fun b!1059632 () Bool)

(declare-fun res!707904 () Bool)

(assert (=> b!1059632 (=> (not res!707904) (not e!603194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66954 (_ BitVec 32)) Bool)

(assert (=> b!1059632 (= res!707904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!707902 () Bool)

(assert (=> start!93704 (=> (not res!707902) (not e!603194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93704 (= res!707902 (validMask!0 mask!1515))))

(assert (=> start!93704 e!603194))

(assert (=> start!93704 true))

(declare-fun e!603195 () Bool)

(declare-fun array_inv!24794 (array!66952) Bool)

(assert (=> start!93704 (and (array_inv!24794 _values!955) e!603195)))

(declare-fun array_inv!24795 (array!66954) Bool)

(assert (=> start!93704 (array_inv!24795 _keys!1163)))

(declare-fun b!1059635 () Bool)

(assert (=> b!1059635 (= e!603194 false)))

(declare-fun lt!467141 () Bool)

(declare-datatypes ((List!22558 0))(
  ( (Nil!22555) (Cons!22554 (h!23763 (_ BitVec 64)) (t!31872 List!22558)) )
))
(declare-fun arrayNoDuplicates!0 (array!66954 (_ BitVec 32) List!22558) Bool)

(assert (=> b!1059635 (= lt!467141 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22555))))

(declare-fun b!1059636 () Bool)

(assert (=> b!1059636 (= e!603195 (and e!603196 mapRes!39124))))

(declare-fun condMapEmpty!39124 () Bool)

(declare-fun mapDefault!39124 () ValueCell!11783)

