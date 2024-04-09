; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93634 () Bool)

(assert start!93634)

(declare-fun mapIsEmpty!39046 () Bool)

(declare-fun mapRes!39046 () Bool)

(assert (=> mapIsEmpty!39046 mapRes!39046))

(declare-fun b!1059105 () Bool)

(declare-fun res!707622 () Bool)

(declare-fun e!602775 () Bool)

(assert (=> b!1059105 (=> (not res!707622) (not e!602775))))

(declare-datatypes ((array!66856 0))(
  ( (array!66857 (arr!32136 (Array (_ BitVec 32) (_ BitVec 64))) (size!32673 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66856)

(assert (=> b!1059105 (= res!707622 (and (bvsle #b00000000000000000000000000000000 (size!32673 _keys!1163)) (bvslt (size!32673 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059106 () Bool)

(declare-fun res!707623 () Bool)

(assert (=> b!1059106 (=> (not res!707623) (not e!602775))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66856 (_ BitVec 32)) Bool)

(assert (=> b!1059106 (= res!707623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059108 () Bool)

(declare-fun e!602776 () Bool)

(declare-fun tp_is_empty!24925 () Bool)

(assert (=> b!1059108 (= e!602776 tp_is_empty!24925)))

(declare-fun mapNonEmpty!39046 () Bool)

(declare-fun tp!74853 () Bool)

(assert (=> mapNonEmpty!39046 (= mapRes!39046 (and tp!74853 e!602776))))

(declare-datatypes ((V!38369 0))(
  ( (V!38370 (val!12513 Int)) )
))
(declare-datatypes ((ValueCell!11759 0))(
  ( (ValueCellFull!11759 (v!15123 V!38369)) (EmptyCell!11759) )
))
(declare-fun mapValue!39046 () ValueCell!11759)

(declare-fun mapKey!39046 () (_ BitVec 32))

(declare-fun mapRest!39046 () (Array (_ BitVec 32) ValueCell!11759))

(declare-datatypes ((array!66858 0))(
  ( (array!66859 (arr!32137 (Array (_ BitVec 32) ValueCell!11759)) (size!32674 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66858)

(assert (=> mapNonEmpty!39046 (= (arr!32137 _values!955) (store mapRest!39046 mapKey!39046 mapValue!39046))))

(declare-fun b!1059109 () Bool)

(declare-fun res!707620 () Bool)

(assert (=> b!1059109 (=> (not res!707620) (not e!602775))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059109 (= res!707620 (and (= (size!32674 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32673 _keys!1163) (size!32674 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059110 () Bool)

(declare-fun e!602778 () Bool)

(assert (=> b!1059110 (= e!602778 tp_is_empty!24925)))

(declare-fun b!1059111 () Bool)

(declare-datatypes ((List!22541 0))(
  ( (Nil!22538) (Cons!22537 (h!23746 (_ BitVec 64)) (t!31855 List!22541)) )
))
(declare-fun noDuplicate!1587 (List!22541) Bool)

(assert (=> b!1059111 (= e!602775 (not (noDuplicate!1587 Nil!22538)))))

(declare-fun b!1059107 () Bool)

(declare-fun e!602777 () Bool)

(assert (=> b!1059107 (= e!602777 (and e!602778 mapRes!39046))))

(declare-fun condMapEmpty!39046 () Bool)

(declare-fun mapDefault!39046 () ValueCell!11759)

