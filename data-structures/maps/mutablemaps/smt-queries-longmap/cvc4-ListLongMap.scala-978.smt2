; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21162 () Bool)

(assert start!21162)

(declare-fun b_free!5621 () Bool)

(declare-fun b_next!5621 () Bool)

(assert (=> start!21162 (= b_free!5621 (not b_next!5621))))

(declare-fun tp!19931 () Bool)

(declare-fun b_and!12493 () Bool)

(assert (=> start!21162 (= tp!19931 b_and!12493)))

(declare-datatypes ((V!6957 0))(
  ( (V!6958 (val!2786 Int)) )
))
(declare-datatypes ((tuple2!4214 0))(
  ( (tuple2!4215 (_1!2117 (_ BitVec 64)) (_2!2117 V!6957)) )
))
(declare-datatypes ((List!3125 0))(
  ( (Nil!3122) (Cons!3121 (h!3763 tuple2!4214) (t!8082 List!3125)) )
))
(declare-datatypes ((ListLongMap!3141 0))(
  ( (ListLongMap!3142 (toList!1586 List!3125)) )
))
(declare-fun lt!109906 () ListLongMap!3141)

(declare-fun b!212917 () Bool)

(declare-fun lt!109909 () ListLongMap!3141)

(declare-fun lt!109908 () tuple2!4214)

(declare-fun e!138511 () Bool)

(declare-fun +!579 (ListLongMap!3141 tuple2!4214) ListLongMap!3141)

(assert (=> b!212917 (= e!138511 (= lt!109909 (+!579 lt!109906 lt!109908)))))

(declare-fun mapIsEmpty!9320 () Bool)

(declare-fun mapRes!9320 () Bool)

(assert (=> mapIsEmpty!9320 mapRes!9320))

(declare-fun b!212918 () Bool)

(declare-fun e!138516 () Bool)

(declare-fun tp_is_empty!5483 () Bool)

(assert (=> b!212918 (= e!138516 tp_is_empty!5483)))

(declare-fun b!212919 () Bool)

(declare-fun res!104182 () Bool)

(declare-fun e!138513 () Bool)

(assert (=> b!212919 (=> (not res!104182) (not e!138513))))

(declare-datatypes ((array!10168 0))(
  ( (array!10169 (arr!4825 (Array (_ BitVec 32) (_ BitVec 64))) (size!5150 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10168)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10168 (_ BitVec 32)) Bool)

(assert (=> b!212919 (= res!104182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212920 () Bool)

(declare-fun res!104178 () Bool)

(assert (=> b!212920 (=> (not res!104178) (not e!138513))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212920 (= res!104178 (validKeyInArray!0 k!843))))

(declare-fun res!104186 () Bool)

(assert (=> start!21162 (=> (not res!104186) (not e!138513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21162 (= res!104186 (validMask!0 mask!1149))))

(assert (=> start!21162 e!138513))

(declare-datatypes ((ValueCell!2398 0))(
  ( (ValueCellFull!2398 (v!4788 V!6957)) (EmptyCell!2398) )
))
(declare-datatypes ((array!10170 0))(
  ( (array!10171 (arr!4826 (Array (_ BitVec 32) ValueCell!2398)) (size!5151 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10170)

(declare-fun e!138514 () Bool)

(declare-fun array_inv!3183 (array!10170) Bool)

(assert (=> start!21162 (and (array_inv!3183 _values!649) e!138514)))

(assert (=> start!21162 true))

(assert (=> start!21162 tp_is_empty!5483))

(declare-fun array_inv!3184 (array!10168) Bool)

(assert (=> start!21162 (array_inv!3184 _keys!825)))

(assert (=> start!21162 tp!19931))

(declare-fun b!212921 () Bool)

(declare-fun res!104177 () Bool)

(assert (=> b!212921 (=> (not res!104177) (not e!138513))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!212921 (= res!104177 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5150 _keys!825))))))

(declare-fun b!212922 () Bool)

(declare-fun res!104184 () Bool)

(assert (=> b!212922 (=> (not res!104184) (not e!138513))))

(assert (=> b!212922 (= res!104184 (= (select (arr!4825 _keys!825) i!601) k!843))))

(declare-fun b!212923 () Bool)

(declare-fun res!104183 () Bool)

(assert (=> b!212923 (=> (not res!104183) (not e!138511))))

(declare-fun lt!109910 () ListLongMap!3141)

(declare-fun lt!109911 () ListLongMap!3141)

(assert (=> b!212923 (= res!104183 (= lt!109910 (+!579 lt!109911 lt!109908)))))

(declare-fun b!212924 () Bool)

(declare-fun e!138515 () Bool)

(assert (=> b!212924 (= e!138515 (not (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212924 e!138511))

(declare-fun res!104185 () Bool)

(assert (=> b!212924 (=> (not res!104185) (not e!138511))))

(declare-fun lt!109905 () ListLongMap!3141)

(assert (=> b!212924 (= res!104185 (= lt!109910 (+!579 lt!109905 lt!109908)))))

(declare-fun minValue!615 () V!6957)

(assert (=> b!212924 (= lt!109908 (tuple2!4215 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!9320 () Bool)

(declare-fun tp!19930 () Bool)

(declare-fun e!138512 () Bool)

(assert (=> mapNonEmpty!9320 (= mapRes!9320 (and tp!19930 e!138512))))

(declare-fun mapValue!9320 () ValueCell!2398)

(declare-fun mapRest!9320 () (Array (_ BitVec 32) ValueCell!2398))

(declare-fun mapKey!9320 () (_ BitVec 32))

(assert (=> mapNonEmpty!9320 (= (arr!4826 _values!649) (store mapRest!9320 mapKey!9320 mapValue!9320))))

(declare-fun b!212925 () Bool)

(declare-fun res!104180 () Bool)

(assert (=> b!212925 (=> (not res!104180) (not e!138513))))

(declare-datatypes ((List!3126 0))(
  ( (Nil!3123) (Cons!3122 (h!3764 (_ BitVec 64)) (t!8083 List!3126)) )
))
(declare-fun arrayNoDuplicates!0 (array!10168 (_ BitVec 32) List!3126) Bool)

(assert (=> b!212925 (= res!104180 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3123))))

(declare-fun b!212926 () Bool)

(declare-fun res!104181 () Bool)

(assert (=> b!212926 (=> (not res!104181) (not e!138513))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212926 (= res!104181 (and (= (size!5151 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5150 _keys!825) (size!5151 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212927 () Bool)

(assert (=> b!212927 (= e!138514 (and e!138516 mapRes!9320))))

(declare-fun condMapEmpty!9320 () Bool)

(declare-fun mapDefault!9320 () ValueCell!2398)

